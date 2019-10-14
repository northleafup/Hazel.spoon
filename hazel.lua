
local obj = {}

--多久执行一次定时任务,单位为秒,如不写默认为60*60秒，即一小时
time_scheduled = 5

-------------------------------
-- 在此处添加自定义函数
-- 函数中的第一个参数必须为srcFilePath 代表的是要监控的目录
-------------------------------

-- 监控Downloads文件夹
function watchDownloads(srcFilePath,data)
    ---- send nzb and torrent files to the transfer directory
    --if data.ext == 'nzb' or data.ext == 'torrent' then
    --  moveFileToPath(data.file, obj.cfg.path.transfer)
    --else
    --  -- ignore files with color tags
    --  if not isColorTagged(data.file) then
    --    -- move files older than a week into the dump directory
    --    if isOlderThan(data.file, TIME.WEEK) then
    --      moveFileToPath(data.file, obj.cfg.path.dump)
    --    end
    --  end
    --end
    --
    --请在此处填写您要对本目录内文件做的事情
    print("watchDownloads"..data.file)
end





-------------------------------
--以下为开关，每监控一个目录写一行
-------------------------------
watchContent = { 
    --路径从用户目录开始，比如以下定义即表示~/Downloads 目录
    { filePath = "Downloads", action = watchDownloads }
}



return obj
