.class synthetic Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner$1;
.super Ljava/lang/Object;
.source "ProxySelectorRoutePlanner.java"
.field static final synthetic $SwitchMap$java$net$Proxy$Type:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Ljava/net/Proxy$Type;->values()[Ljava/net/Proxy$Type;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I
:try_start_9
sget-object v0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I
sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f
sget-object v0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I
sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d
sget-object v0, Lch/boye/httpclientandroidlib/impl/conn/ProxySelectorRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I
sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;
invoke-virtual {v1}, Ljava/net/Proxy$Type;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b
:goto_2a
return-void
:catch_2b
move-exception v0
goto :goto_2a
:catch_2d
move-exception v0
goto :goto_1f
:catch_2f
move-exception v0
goto :goto_14
.end method