if (text and text == "تفعيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, '  *☆:↫تم تفعيل اوامر التحشيش*')
database:del(bot_id.."Fun_Bots:"..msg.chat_id_)
end
if text == ("رفع مطي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*☆: تم رفع العضو مطي في الكروب* \n*☆: تعال حبي استلم العربانه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل مطي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mote:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل العضو مطي في الكروب*\n*☆: تعال حبي رجع العربانه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
-----------------------------------------------------
if text == 'تنزيل الحاتات' and Mod(msg) then
database:del(bot_id..'Mode:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم مسح جميع المطايه*')
end
if text == ("تاك للحاتات") and Mod(msg) then
local list = database:smembers(bot_id..'Mode:User'..msg.chat_id_)
t = "\n *☆: قائمه حاتات الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحاته [@"..username.."]\n"
else
t = t..""..k.."» الحاته `"..v.."`\n"
end
end
if #list == 0 then
t = " *☆: مع الاسف لا يوجد حاته*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع الحاته") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*☆: تم رفع العضــو الحاته في الكروب* \n*☆: تعال يحاته ممكن نتعرف*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل الحاته")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Mode:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل العضــو الحاته من الكروب*\n*☆: مشيي مو خوش حاتهه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم

if text == ("تاك للحات") and Mod(msg) then
local list = database:smembers(bot_id..'Modde:User'..msg.chat_id_)
t = "\n *☆: قائمه حات الكروب* \nٴ𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻ٴ\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» الحات [@"..username.."]\n"
else
t = t..""..k.."» الحات `"..v.."`\n"
end
end
if #list == 0 then
t = " *☆: مع الاسف لا يوجد حات*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع الحات") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'DEVBESSO')..')'
local  statuss  = '\n*☆: تم رفع العضــو الحات في الكروب* \n*☆: تعال حبي الحات نطيني بوسه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل الحات")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Modde:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: العضــو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل العضــو الحات من الكروب*\n*☆: مشيي مو خوش حات*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الصخوله' and Mod(msg) then
database:del(bot_id..'Sakl:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع صخوله من الكروب*')
end
if text == ("تاك للصخوله") and Mod(msg) then
local list = database:smembers(bot_id..'Sakl:User'..msg.chat_id_)
t = "\n *☆: قائمة صخوله الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الصخل* [@"..username.."]\n"
else
t = t..""..k.."» *الصخل* `"..v.."`\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد صخل*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع صخل") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع المتهم صخل بالكروب*\n*☆: الان اصبح صخل الكروب*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text == ("تنزيل صخل")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Sakl:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل العضو صخل*\n*☆: ارجع للبيتكم حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الجلاب' and Mod(msg) then
database:del(bot_id..'Motte:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع جلاب الكروب*')
end
if text == ("تاك للجلاب") and Mod(msg) then
local list = database:smembers(bot_id..'Motte:User'..msg.chat_id_)
t = "\n *☆: قائمة الجلاب الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجلب* [@"..username.."]\n"
else
t = t..""..k.."» *الجلب* `"..v.."`\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد جلب*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جلب") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع جلب في الكروب*\n*☆: تعال حبي اطيك عضمه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جلب")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Motte:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل جلب في الكروب*\n*☆: حبي رجع عضمه*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل القروده' and Mod(msg) then
database:del(bot_id..'Motee:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع القروده بالكروب*')
end
if text == ("تاك للقروده") and Mod(msg) then
local list = database:smembers(bot_id..'Motee:User'..msg.chat_id_)
t = "\n *☆: قائمة القروده الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *القرد* [@"..username.."]\n"
else
t = t..""..k.."» *القرد* `"..v.."`\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد قرد*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع قرد") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع قرد في الكروب*\n*☆: تعال حبي استلم موزه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل قرد")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Motee:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل قرد من الكروب*\n*☆: رجع موزه حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الحصونه' and Mod(msg) then
database:del(bot_id..'Hors:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع الحصونه بالكروب*')
end
if text == ("تاك للحصونه") and Mod(msg) then
local list = database:smembers(bot_id..'Hors:User'..msg.chat_id_)
t = "\n *☆: قائمة الحصونه الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الحصان* [@"..username.."]\n"
else
t = t..""..k.."» *الحصان* `"..v.."`\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد حصان*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع حصان") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع حصان في الكروب*\n*☆: تعال حبي احطلك سرج وركبك فرني فره حلوه*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل حصان")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Hors:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل حصان من الكروب*\n*☆: رجع السرج حبي*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل البقرات' and Mod(msg) then
database:del(bot_id..'Bakra:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع البقرات بالكروب*')
end
if text == ("تاك للبقرات") and Mod(msg) then
local list = database:smembers(bot_id..'Bakra:User'..msg.chat_id_)
t = "\n *☆: قائمة البقرات الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *البقره* [@"..username.."]\n"
else
t = t..""..k.."» *البقره* "..v.."\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد البقره*"
end
send(msg.chat_id_, msg.id_, t)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("رفع بقره") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع بقره في الكروب*\n*☆: ها يالهايشه تع احلبك*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل بقره")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Bakra:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل بقره من الكروب*\n*☆: تعال هاك حليب مالتك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الطليان' and Mod(msg) then
database:del(bot_id..'Tele:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع طليان بالكروب')
end
if text == ("تاك للطليان") and Mod(msg) then
local list = database:smembers(bot_id..'Tele:User'..msg.chat_id_)
t = "\n *☆: قائمة الطليان الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الطلي* [@"..username.."]\n"
else
t = t..""..k.."» *الطلي* "..v.."\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد طلي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع طلي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع الطلي في الكروب*\n*☆: طلع برا ابو البعرور الوصخ*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل طلي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Tele:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل الطلي من الكروب*\n *☆: هاك اخذ بعرور*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل الزواحف' and Mod(msg) then
database:del(bot_id..'Zahf:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع زواحف*')
end
if text == ("تاك للزواحف") and Mod(msg) then
local list = database:smembers(bot_id..'Zahf:User'..msg.chat_id_)
t = "\n *☆: قائمة الزواحف الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الزاحف* [@"..username.."]\n"
else
t = t..""..k.."» *الزاحف* "..v.."\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد زاحف*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع زاحف") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع زاحف في الكروب*\n*☆: كمشتك حبي جيب رقم*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل زاحف")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Zahf:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل زاحف من الكروب*\n*☆: هاك حبي هاذا رقم مالك*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تنزيل جريذيه' and Mod(msg) then
database:del(bot_id..'Jred:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *☆: تم تنزيل جميع جريزي*')
end
if text == ("تاك للجريذيه") and Mod(msg) then
local list = database:smembers(bot_id..'Jred:User'..msg.chat_id_)
t = "\n *☆: قائمة الجريذيه الكروب* \n𓍹ⵧⵧⵧⵧ⊱•𝘽𝙍•⊰ⵧⵧⵧⵧ𓍻\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."» *الجريذي* [@"..username.."]\n"
else
t = t..""..k.."» *الجريذي* "..v.."\n"
end
end
if #list == 0 then
t = " *☆: لا يوجد جريذي*"
end
send(msg.chat_id_, msg.id_, t)
end
---------
if text == ("رفع جريذي") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) and GetChannelMember(msg) then  
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *☆: تم تعطيل الرفع*') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
local  statuss  = '\n*☆: تم رفع جريذي في الكروب*\n*☆: خايس ريحتك موتتنه روح سبح يع*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if (text == ("تنزيل جريذي")) and msg.reply_to_message_id_ and Mod(msg) and GetChannelMember(msg) then  
function start_function(extra, result, success)
database:srem(bot_id..'Jred:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *☆: اسم المستخدم »* ['..data.first_name_..'](t.me/'..(data.username_ or 'CXRCX')..')'
status  = '\n*☆: تم تنزيل جريذي من الكروب*\n*☆: هاك ليفه اسبح*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if (text and text == "تعطيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, ' *☆:↫تم تعطيل اوامر التحشيش*')
database:set(bot_id.."Fun_Bots:"..msg.chat_id_,"true")
end