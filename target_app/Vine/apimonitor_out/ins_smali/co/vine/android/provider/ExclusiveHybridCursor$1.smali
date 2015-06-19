.class synthetic Lco/vine/android/provider/ExclusiveHybridCursor$1;
.super Ljava/lang/Object;
.source "ExclusiveHybridCursor.java"
.field static final synthetic $SwitchMap$co$vine$android$provider$ExclusiveHybridCursor$Mode:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->values()[Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$1;->$SwitchMap$co$vine$android$provider$ExclusiveHybridCursor$Mode:[I
:try_start_9
sget-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$1;->$SwitchMap$co$vine$android$provider$ExclusiveHybridCursor$Mode:[I
sget-object v1, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->LIST:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
invoke-virtual {v1}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22
sget-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$1;->$SwitchMap$co$vine$android$provider$ExclusiveHybridCursor$Mode:[I
sget-object v1, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->CURSOR:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
invoke-virtual {v1}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
goto :goto_1f
:catch_22
move-exception v0
goto :goto_14
.end method