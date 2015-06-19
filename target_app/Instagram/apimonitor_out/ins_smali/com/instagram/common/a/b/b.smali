.class final synthetic Lcom/instagram/common/a/b/b;
.super Ljava/lang/Object;
.source "ApiHttpClient.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/instagram/common/a/c/a;->a()[I
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/instagram/common/a/b/b;->a:[I
:try_start_9
sget-object v0, Lcom/instagram/common/a/b/b;->a:[I
sget v1, Lcom/instagram/common/a/c/a;->c:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_12
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_34
:try_start_12
:goto_12
sget-object v0, Lcom/instagram/common/a/b/b;->a:[I
sget v1, Lcom/instagram/common/a/c/a;->a:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1b
:goto_1b
:try_end_1b
.catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_32
sget-object v0, Lcom/instagram/common/a/b/b;->a:[I
sget v1, Lcom/instagram/common/a/c/a;->d:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x3
aput v2, v0, v1
:goto_24
:try_end_24
.catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_24} :catch_30
:try_start_24
sget-object v0, Lcom/instagram/common/a/b/b;->a:[I
sget v1, Lcom/instagram/common/a/c/a;->b:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_2d
.catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2d} :catch_2e
:goto_2d
return-void
:catch_2e
move-exception v0
goto :goto_2d
:catch_30
move-exception v0
goto :goto_24
:catch_32
move-exception v0
goto :goto_1b
:catch_34
move-exception v0
goto :goto_12
.end method