
local _M = loadPrevious(...)

registerTalentTranslation{
	id = "T_PAIN_ENHANCEMENT_SYSTEM",
	name = "痛苦强化系统",
	mode = "passive",
	require_special_desc ="当 前 角 色 解 锁 了 ‘体 形 就 是 一 切’ 成 就。",
	info = function(self, t)
		return ([[系 统 将 会 在 你 暴 击 时 启 动， 在 6 回 合 内 你 的 主 属 性 将 会 增 加 等 同 于 你 40%% 力 量 的 值。]])
		:format()
	end,
}
return _M