Config = {}

Config.UseTarget = false -- Set to false to use DrawText/TextUI instead of ox_target (grrr, choose your interaction style!)
Config.ProgressDuration = 3000 -- Time in ms for the progress bar to prevent dupes and glitches
Config.InteractDistance = 2.0 -- Distance to interact with stash

-- Stashes table: Configure each stash here
-- lockTypes: table of strings, e.g. {'personal', 'job', 'gang', 'code'}
-- If 'personal': owner = true (citizen ID/personal stash)
-- If 'job' or 'gang': provide groups = {['jobname'] = minGrade}
-- If 'code': provide code = 'yourcode' (string)
-- Note: 'job' and 'gang' use the same groups system, since gangs are often treated as jobs in frameworks
Config.Stashes = {
    {
        id = 'Admin_huis_kombuis',
        label = 'Yskas admin',
        slots = 50,
        weight = 50000, -- in grams
        coords = vec3(-827.88, 7172.78, 96.14), -- Replace with actual coords
        lockTypes = {'code'},
        code = '123', -- Only if 'code' in lockTypes
        groups = nil -- e.g. {['police'] = 0, ['ballas'] = 1} if 'job' or 'gang'
    },
    {
        id = 'daniemilehigh',
        label = 'D1_mh',
        slots = 50,
        weight = 100000,
        coords = vec3(-149.37, -1014.2, 212.4),
        lockTypes = {'code'},
        code = '123',
        groups = nil
        --groups = {['police'] = 0}
    },
    {
        id = 'XENARACTECH', -- RACETECH --
        label = 'XENARACTECH',
        slots = 100,
        weight = 200000,
        coords = vec3(-99.73, -403.09, 37.28),
        lockTypes = {'code'},
        code = '123',
        groups = nil
        --groups = {['police'] = 0}
    },
}