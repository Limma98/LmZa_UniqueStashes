Stash script for ox_inventory using lib functions to secure and modify the stash control

```
-- Stashes table: Configure each stash here
-- lockTypes: table of strings, e.g. {'personal', 'job', 'gang', 'code'}
-- If 'personal': owner = true (citizen ID/personal stash)
-- If 'job' or 'gang': provide groups = {['jobname'] = minGrade}
-- If 'code': provide code = 'yourcode' (string)
-- Note: 'job' and 'gang' use the same groups system, since gangs are often treated as jobs in frameworks
```
stash example

```
    {
        id = 'stash1', -- controls the saved id in db
        label = 'labelwantedhere', -- stash label
        slots = 50, -- amount of slots wanted
        weight = 50000, -- in grams
        coords = vec3(-827.88, 7172.78, 96.14), -- Replace with actual coords
        lockTypes = {'code'},
        code = '123', -- Only if 'code' in lockTypes
        groups = nil -- e.g. {['police'] = 0, ['ballas'] = 1} if 'job' or 'gang'
    },
```
<img width="1836" height="928" alt="Screenshot 2025-09-15 094813" src="https://github.com/user-attachments/assets/1f53fccf-8d17-434a-acda-627edef5ded9" />
<img width="1335" height="680" alt="Screenshot 2025-09-15 094751" src="https://github.com/user-attachments/assets/2769b729-2f01-4a7b-a566-5f6255b766d9" />

more updates to come in the future aswell

plans in the future

-- add decay rate adjuster
-- lockpickable
-- dropzone
-- dynamic db cleaner if unused after a %n amount of time that stash should autodelete after a time
-- logging for duplication attemps


for more info join our public discord
https://discord.gg/v7DM6AfxPw


NO SUPPORT GIVEN ON FREE SCRIPTS
