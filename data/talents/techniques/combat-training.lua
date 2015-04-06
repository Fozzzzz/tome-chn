local Talents = require "engine.interface.ActorTalents"
local damDesc = Talents.main_env.damDesc
local DamageType = require "engine.DamageType"

Talents.talents_def.T_THICK_SKIN.name= "硬化皮肤"
Talents.talents_def.T_THICK_SKIN.info= function(self, t)
		local res = t.getRes(self, t)
		return ([[你 的 皮 肤 变 的 更 加 坚 硬。 增 加 所 有 伤 害 抵 抗 %0.1f%% 。]]):
		format(res)
	end
Talents.talents_def.T_ARMOUR_TRAINING.name= "护甲训练"
Talents.talents_def.T_ARMOUR_TRAINING.info= function(self, t)
		local hardiness = t.getArmorHardiness(self, t)
		local armor = t.getArmor(self, t)
		local criticalreduction = t.getCriticalChanceReduction(self, t)
		local classrestriction = ""
		if self.descriptor and self.descriptor.subclass == "Brawler" then
			classrestriction = "(注 意 当 格 斗 家 穿 戴 板 甲 时 ， 他 们 的 大 部 分 技 能 无 法 使 用 。 )"
		end
		if self:knowTalent(self.T_STEALTH) then
			classrestriction = "(注 意 当 你 穿 戴 锁 甲 时 会 干 扰 潜 行。)"
		end
		return ([[ 你 使 用 防 具 来 偏 转 攻 击 和 保 护 重 要 部 位 的 能 力 加 强 了。 
		根 据 现 有 防 具， 提 高 %d 护 甲 值 和 %d%% 护 甲 韧 性， 并 减 少 %d%% 被 暴 击 几 率。 
		( 这 项 技 能 只 对 重 甲 或 板 甲 提 供 加 成。 ) 
		在 等 级 1 时， 能 使 你 装 备 锁 甲、 金 属 手 套、 头 盔 和 重 靴。 
		在 等 级 2 时， 能 使 你 装 备 盾 牌。 
		在 等 级 3 时， 能 使 你 装 备 板 甲。
		%s]]):format(armor, hardiness, criticalreduction, classrestriction)
	end
Talents.talents_def.T_WEAPON_COMBAT.name= "强化命中"
Talents.talents_def.T_WEAPON_COMBAT.info= function(self, t)
		local attack = t.getAttack(self, t)
		return ([[增 加 你 的 徒 手、 近 身 和 远 程 武 器 命 中 %d 点。]]):
		format(attack)
	end
Talents.talents_def.T_WEAPONS_MASTERY.name= "武器掌握"
Talents.talents_def.T_WEAPONS_MASTERY.info= function(self, t)
		local damage = t.getDamage(self, t)
		local inc = t.getPercentInc(self, t)
		return ([[增 加 %d 点 物 理 强 度。 同 时 增 加 剑、 斧、 狼 牙 棒 伤 害 %d%% 。]]):
		format(damage, 100*inc)
	end
Talents.talents_def.T_KNIFE_MASTERY.name= "匕首掌握"
Talents.talents_def.T_KNIFE_MASTERY.info= function(self, t)
		local damage = t.getDamage(self, t)
		local inc = t.getPercentInc(self, t)
		return ([[增 加 %d 点 物 理 强 度。 同 时 增 加 匕 首 武 器 伤 害 %d%% 。]]):
		format(damage, 100*inc)
	end

Talents.talents_def.T_EXOTIC_WEAPONS_MASTERY.name= "特殊武器掌握"
Talents.talents_def.T_EXOTIC_WEAPONS_MASTERY.info= function(self, t)
		local damage = t.getDamage(self, t)
		local inc = t.getPercentInc(self, t)
		return ([[增 加 物 理 强 度 %d 。 增 加 特 殊 武 器 伤 害 %d%% 。]]):
		format(damage, 100*inc)
	end

