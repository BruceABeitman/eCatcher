.class public final Lcom/lenovo/anyshare/sdk/internal/bb;
.super Ljava/lang/Object;
.source "RootUtils.java"
.field private static a:I
.field private static b:Lcom/lenovo/anyshare/sdk/internal/bb$c;
.field private static c:Lcom/lenovo/anyshare/sdk/internal/bb$d;
.field private static d:Lcom/lenovo/anyshare/sdk/internal/bb$e;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, -0x1
sput v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bb$c;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/bb$c;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bb;->b:Lcom/lenovo/anyshare/sdk/internal/bb$c;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bb$d;
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bb$d;-><init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bb;->c:Lcom/lenovo/anyshare/sdk/internal/bb$d;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/bb$e;
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bb$e;-><init>(Lcom/lenovo/anyshare/sdk/internal/bb$1;)V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bb;->d:Lcom/lenovo/anyshare/sdk/internal/bb$e;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;
.registers 4
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bb;->b(Landroid/content/Context;)I
move-result v0
const/4 v1, 0x1
if-gt v0, v1, :cond_d
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bb$b;
invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/bb$b;-><init>()V
:goto_c
return-object v1
:cond_d
and-int/lit8 v1, v0, 0x4
if-eqz v1, :cond_18
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bb;->c:Lcom/lenovo/anyshare/sdk/internal/bb$d;
invoke-virtual {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;
move-result-object v1
goto :goto_c
:cond_18
and-int/lit8 v1, v0, 0x2
if-eqz v1, :cond_23
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bb;->b:Lcom/lenovo/anyshare/sdk/internal/bb$c;
invoke-virtual {v1, p1}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/bb$b;
move-result-object v1
goto :goto_c
:cond_23
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bb$b;
invoke-direct {v1}, Lcom/lenovo/anyshare/sdk/internal/bb$b;-><init>()V
goto :goto_c
.end method
.method public static a(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bb;->b(Landroid/content/Context;)I
move-result v1
if-le v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/bb$b;)Z
.registers 2
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/bb;->b(Lcom/lenovo/anyshare/sdk/internal/bb$b;)Z
move-result v0
return v0
.end method
.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 3
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bb;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static declared-synchronized b(Landroid/content/Context;)I
.registers 3
const-class v1, Lcom/lenovo/anyshare/sdk/internal/bb;
monitor-enter v1
:try_start_3
sget v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
if-ltz v0, :cond_b
sget v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_3b
:goto_9
monitor-exit v1
return v0
:cond_b
const/4 v0, 0x0
:try_start_c
sput v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bb;->b:Lcom/lenovo/anyshare/sdk/internal/bb$c;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/bb$c;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1c
sget v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
or-int/lit8 v0, v0, 0x2
sput v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
:cond_1c
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bb;->c:Lcom/lenovo/anyshare/sdk/internal/bb$d;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/bb$d;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2a
sget v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
or-int/lit8 v0, v0, 0x4
sput v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
:cond_2a
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/bb;->d:Lcom/lenovo/anyshare/sdk/internal/bb$e;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/bb$e;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_38
sget v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
or-int/lit8 v0, v0, 0x1
sput v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
:cond_38
sget v0, Lcom/lenovo/anyshare/sdk/internal/bb;->a:I
:try_end_3a
.catchall {:try_start_c .. :try_end_3a} :catchall_3b
goto :goto_9
:catchall_3b
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static b(Lcom/lenovo/anyshare/sdk/internal/bb$b;)Z
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$b;->b:Ljava/lang/String;
const-string/jumbo v3, ""
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
move v0, v1
:goto_e
return v0
:cond_f
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_2a
const-string/jumbo v3, "success"
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bb$b;->a:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/bb;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2a
move v0, v1
goto :goto_e
:cond_2a
move v0, v2
goto :goto_e
.end method
.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
const/4 v1, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_6
:cond_5
:goto_5
return v1
:cond_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-gt v0, v2, :cond_5
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_5
const/4 v1, 0x1
goto :goto_5
.end method