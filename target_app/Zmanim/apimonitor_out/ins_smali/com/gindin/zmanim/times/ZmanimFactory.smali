.class public Lcom/gindin/zmanim/times/ZmanimFactory;
.super Ljava/lang/Object;
.source "ZmanimFactory.java"
.field private final typeToZmanimMap:Ljava/util/Map;
.field private final zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
.method public constructor <init>(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
invoke-virtual {p1}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->getZmanimCalendar()Lcom/gindin/zmanim/calendar/ZmanimCalendar;
move-result-object v1
iput-object v1, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
new-instance v0, Lcom/gindin/zmanim/times/ZmanimFactory$1;
invoke-direct {v0, p0}, Lcom/gindin/zmanim/times/ZmanimFactory$1;-><init>(Lcom/gindin/zmanim/times/ZmanimFactory;)V
invoke-virtual {p1, v0}, Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar;->addListener(Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;)V
return-void
.end method
.method static synthetic access$000(Lcom/gindin/zmanim/times/ZmanimFactory;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
return-object v0
.end method
.method public getOrCreate(Lcom/gindin/zmanim/times/Zmanim$Type;)Lcom/gindin/zmanim/times/Zmanim;
.registers 7
iget-object v2, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
monitor-enter v2
:try_start_3
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/gindin/zmanim/times/Zmanim;
if-eqz v0, :cond_10
monitor-exit v2
move-object v1, v0
:goto_f
return-object v1
:cond_10
sget-object v3, Lcom/gindin/zmanim/times/ZmanimFactory$2;->$SwitchMap$com$gindin$zmanim$times$Zmanim$Type:[I
invoke-virtual {p1}, Lcom/gindin/zmanim/times/Zmanim$Type;->ordinal()I
move-result v4
aget v3, v3, v4
packed-switch v3, :pswitch_data_9e
:goto_1b
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v2
move-object v1, v0
goto :goto_f
:pswitch_23
new-instance v0, Lcom/gindin/zmanim/times/AlotHashachar;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/AlotHashachar;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_2b
new-instance v0, Lcom/gindin/zmanim/times/Talit;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/Talit;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_33
new-instance v0, Lcom/gindin/zmanim/times/Hanetz;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/Hanetz;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_3b
new-instance v0, Lcom/gindin/zmanim/times/SofZmanShema;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/SofZmanShema;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_43
new-instance v0, Lcom/gindin/zmanim/times/SofZmanTefila;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/SofZmanTefila;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_4b
new-instance v0, Lcom/gindin/zmanim/times/Chatzot;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/Chatzot;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_53
new-instance v0, Lcom/gindin/zmanim/times/MinchaGedola;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/MinchaGedola;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_5b
new-instance v0, Lcom/gindin/zmanim/times/MinchaKetana;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/MinchaKetana;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_63
new-instance v0, Lcom/gindin/zmanim/times/PlagHaMincha;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/PlagHaMincha;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_6b
new-instance v0, Lcom/gindin/zmanim/times/CandleLighting;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/CandleLighting;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_73
new-instance v0, Lcom/gindin/zmanim/times/Shkia;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/Shkia;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_7b
new-instance v0, Lcom/gindin/zmanim/times/BeinHashmashot;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/BeinHashmashot;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_83
new-instance v0, Lcom/gindin/zmanim/times/LatestMincha;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/LatestMincha;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_8b
new-instance v0, Lcom/gindin/zmanim/times/TzaitHacochavim;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/TzaitHacochavim;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:pswitch_93
new-instance v0, Lcom/gindin/zmanim/times/NightChatzot;
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory;->zmanimCalendar:Lcom/gindin/zmanim/calendar/ZmanimCalendar;
invoke-direct {v0, v3}, Lcom/gindin/zmanim/times/NightChatzot;-><init>(Lcom/gindin/zmanim/calendar/ZmanimCalendar;)V
goto :goto_1b
:catchall_9b
move-exception v3
monitor-exit v2
:try_end_9d
.catchall {:try_start_3 .. :try_end_9d} :catchall_9b
throw v3
:pswitch_data_9e
.packed-switch 0x1
:pswitch_23
:pswitch_2b
:pswitch_33
:pswitch_3b
:pswitch_43
:pswitch_4b
:pswitch_53
:pswitch_5b
:pswitch_63
:pswitch_6b
:pswitch_73
:pswitch_7b
:pswitch_83
:pswitch_8b
:pswitch_93
.end packed-switch
.end method