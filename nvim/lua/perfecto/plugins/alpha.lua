local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local datetime = os.date("󰃭 %d-%m-%Y   %H:%M:%S")

dashboard.section.header.val = {
	"",
	"",
	"",
	"",
	"",
	"         ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
	"         ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
	"         ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
	"         ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
	"         ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
	"         ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
	"",
	"           | GHOST COMPUTER | " .. datetime .. " |         ",
}

dashboard.section.buttons.val = {
	dashboard.button("E", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("R", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("S", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("Q", "󰗼  > Quit NVIM", ":qa<CR>"),
}

local function getRandomQuote()
    local quotes = {
        {" Fear is temporary,", "Regret is permanent."},
        {"  If your heart is wavering, Do not shoot;", "Because then a new path will be open for you."},
        {"You will succeed;", "It is inevitable."},
        {"The One Who Took The First Napkin Determines Everything In This World","      Only The Results! In This World, Only The Results Matter!"}
    }

    local selectedPair = quotes[math.random(#quotes)]
    return selectedPair
end

local quote = getRandomQuote()
dashboard.section.footer.val = {
    "",
    "",
    "",
    "",
    "",
    quote[1],
    "",
    quote[2],
    "",
    "",
    "",
    "",
}

vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
