.class final synthetic Lcom/instagram/feed/d/m;
.super Ljava/lang/Object;
.source "Media.java"
.field static final synthetic a:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/instagram/n/d;->a()[I
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/instagram/feed/d/m;->a:[I
:try_start_9
sget-object v0, Lcom/instagram/feed/d/m;->a:[I
sget v1, Lcom/instagram/n/d;->a:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_12
:goto_12
:try_end_12
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_1e
sget-object v0, Lcom/instagram/feed/d/m;->a:[I
sget v1, Lcom/instagram/n/d;->b:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1b
:try_end_1b
.catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c
return-void
:catch_1c
move-exception v0
goto :goto_1b
:catch_1e
move-exception v0
goto :goto_12
.end method