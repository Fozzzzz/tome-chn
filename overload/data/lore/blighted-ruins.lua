﻿-- ToME - Tales of Maj'Eyal
-- Copyright (C) 2009, 2010, 2011, 2012, 2013 Nicolas Casalini
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
-- Nicolas Casalini "DarkGod"
-- darkgod@te4.org

--------------------------------------------------------------------------
-- Blighted Ruins
--------------------------------------------------------------------------
newLore{
	id = "blighted-ruins-note-1",
	category = "blighted ruins",
	name = "note from the Necromancer",
	lore = [[我伟大的计划被耽搁了。这真让我不爽。
	附近村庄里的傻瓜们开始怀疑我来此的目的了，并在墓地周围竖起了防御，其实我从墓地得来的那些残渣早就腐烂不堪了，万般无奈下我只能将它们当做备用品使用，也许让这些家伙的互相猜忌会产生更多新鲜的尸体供我驱使……]],
}

newLore{
	id = "blighted-ruins-note-2",
	category = "blighted ruins",
	name = "note from the Necromancer",
	lore = [[欺诈斗篷已经完成！这简直是我伟大计划以外的最高杰作，他能使我的仆人们轻易的穿梭于人群而不会引起任何怀疑。我已穿着此袍大摇大摆的在古利西索尔周围的一个小镇晃荡了一圈, 镇里的傻瓜们眼皮都不抬一下! 有了这件袍子，我计划所需的材料真是太容易获得了……]],
}

newLore{
	id = "blighted-ruins-note-3",
	category = "blighted ruins",
	name = "note from the Necromancer",
	lore = function() return [[命运女神向我微笑，我今天发现了一具倒霉鬼的尸体。]]..game:getPlayer(true).descriptor.subclass..[[?这个彻头彻尾的倒霉鬼却是我命中的福星。他的尸体还没有完全腐烂……真是完美！自从有了欺诈斗篷，我腰不酸了腿不疼了跑步也能上五楼了，我伟大计划的结晶也已变成囊中之物了。我必须尽快开始准备仪式……暗黑兽群又将加入一名新成员。]] end,
}

newLore{
	id = "blighted-ruins-note-4",
	category = "blighted ruins",
	name = "note from the Necromancer",
	lore = [[我的大师之作！它闪耀着荣光，真是美极了。虽然它还没有全部完成，但却足以保护我的巢穴。绝对没有任何英雄能击败它，当它成为完全体时就是无敌的存在啊，那时我将成为世界之主，谁能挡我，我大吼三声谁来斩我！哇哈哈！]],
}
