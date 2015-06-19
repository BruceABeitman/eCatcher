.class final synthetic Lcom/spotify/mobile/android/ui/fragments/p$14;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->values()[Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->b:[I
:try_start_9
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->b:[I
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->b:[I
sget-object v1, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a
:goto_1f
invoke-static {}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->values()[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I
:try_start_28
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->c:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_33
:try_start_33
:try_end_33
.catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_68
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->d:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_3e
:goto_3e
:try_end_3e
.catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_66
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->e:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64
:try_start_49
:goto_49
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I
sget-object v1, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->b:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60
:goto_5f
return-void
:catch_60
move-exception v0
goto :goto_5f
:catch_62
move-exception v0
goto :goto_54
:catch_64
move-exception v0
goto :goto_49
:catch_66
move-exception v0
goto :goto_3e
:catch_68
move-exception v0
goto :goto_33
:catch_6a
move-exception v0
goto :goto_1f
:catch_6c
move-exception v0
goto :goto_14
.end method