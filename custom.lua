Custom = {}

-- DrawText/TextUI customization (if Config.UseTarget = false)
Custom.DrawText = '[E] - Open Stash' -- The text shown in lib.showTextUI
Custom.DrawTextPosition = 'left-center' -- Options: 'right-center', 'left-center', etc.
Custom.DrawTextIcon = 'box' -- Font Awesome icon, grrr, make it fierce!
Custom.DrawTextStyle = {} -- Custom CSS style table, e.g. {backgroundColor = '#FF0000'}

-- Notification texts and styles
Custom.NotifyWrongCode = {
    title = 'Access Denied',
    description = 'Wrong code, try again!',
    type = 'error',
    icon = 'lock'
}

Custom.NotifyNoAccess = {
    title = 'Locked',
    description = 'You don\'t have access to this stash!',
    type = 'error',
    icon = 'ban'
}

Custom.NotifyOpening = {
    title = 'Opening',
    description = 'Hold on, accessing stash...',
    type = 'inform',
    icon = 'box-open'
}

Custom.NotifyCancelled = {
    title = 'Cancelled',
    description = 'Stash opening cancelled.',
    type = 'warning',
    icon = 'times'
}

Custom.ProgressLabel = 'Opening Stash...' -- Customize this text if you want