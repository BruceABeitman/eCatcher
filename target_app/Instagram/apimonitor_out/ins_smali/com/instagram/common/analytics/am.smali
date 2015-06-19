.class final synthetic Lcom/instagram/common/analytics/am;
.super Ljava/lang/Object;
.source "TimeSpentBitArray.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/instagram/common/analytics/an;->a()[I
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/instagram/common/analytics/am;->a:[I
:try_start_9
sget-object v0, Lcom/instagram/common/analytics/am;->a:[I
sget v1, Lcom/instagram/common/analytics/an;->b:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_12
:try_end_12
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_3f
:goto_12
sget-object v0, Lcom/instagram/common/analytics/am;->a:[I
sget v1, Lcom/instagram/common/analytics/an;->d:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1b
.catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_3d
:try_start_1b
:goto_1b
sget-object v0, Lcom/instagram/common/analytics/am;->a:[I
sget v1, Lcom/instagram/common/analytics/an;->c:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x3
aput v2, v0, v1
:goto_24
:try_end_24
.catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_24} :catch_3b
:try_start_24
sget-object v0, Lcom/instagram/common/analytics/am;->a:[I
sget v1, Lcom/instagram/common/analytics/an;->a:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_2d
.catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2d} :catch_39
:goto_2d
:try_start_2d
sget-object v0, Lcom/instagram/common/analytics/am;->a:[I
sget v1, Lcom/instagram/common/analytics/an;->f:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_36
.catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37
:goto_36
return-void
:catch_37
move-exception v0
goto :goto_36
:catch_39
move-exception v0
goto :goto_2d
:catch_3b
move-exception v0
goto :goto_24
:catch_3d
move-exception v0
goto :goto_1b
:catch_3f
move-exception v0
goto :goto_12
.end method