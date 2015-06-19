.class public Lcom/igexin/push/d/c;
.super Ljava/lang/Object;
.field private a:Landroid/content/Context;
.field private b:Lcom/igexin/push/core/d;
.field private c:Lcom/igexin/push/e/b/h;
.field private d:Lcom/igexin/push/e/b/h;
.field private e:Lcom/igexin/push/d/b;
.field private f:Ljava/util/List;
.field private g:Ljava/util/Map;
.field private h:Ljava/util/Map;
.field private i:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a([B)Lcom/igexin/push/c/c/e;
.registers 5
invoke-direct {p0, p1}, Lcom/igexin/push/d/c;->b([B)Lcom/igexin/push/c/c/b;
move-result-object v1
const/4 v0, 0x0
iget-byte v2, v1, Lcom/igexin/push/c/c/b;->b:B
sparse-switch v2, :sswitch_data_4e
:goto_a
if-eqz v0, :cond_11
iget-object v1, v1, Lcom/igexin/push/c/c/b;->d:[B
invoke-virtual {v0, v1}, Lcom/igexin/push/c/c/e;->a([B)V
:cond_11
return-object v0
:sswitch_12
new-instance v0, Lcom/igexin/push/c/c/i;
invoke-direct {v0}, Lcom/igexin/push/c/c/i;-><init>()V
goto :goto_a
:sswitch_18
new-instance v0, Lcom/igexin/push/c/c/k;
invoke-direct {v0}, Lcom/igexin/push/c/c/k;-><init>()V
goto :goto_a
:sswitch_1e
new-instance v0, Lcom/igexin/push/c/c/l;
invoke-direct {v0}, Lcom/igexin/push/c/c/l;-><init>()V
goto :goto_a
:sswitch_24
new-instance v0, Lcom/igexin/push/c/c/m;
invoke-direct {v0}, Lcom/igexin/push/c/c/m;-><init>()V
goto :goto_a
:sswitch_2a
new-instance v0, Lcom/igexin/push/c/c/f;
invoke-direct {v0}, Lcom/igexin/push/c/c/f;-><init>()V
goto :goto_a
:sswitch_30
new-instance v0, Lcom/igexin/push/c/c/o;
invoke-direct {v0}, Lcom/igexin/push/c/c/o;-><init>()V
goto :goto_a
:sswitch_36
new-instance v0, Lcom/igexin/push/c/c/d;
invoke-direct {v0}, Lcom/igexin/push/c/c/d;-><init>()V
goto :goto_a
:sswitch_3c
new-instance v0, Lcom/igexin/push/c/c/n;
invoke-direct {v0}, Lcom/igexin/push/c/c/n;-><init>()V
goto :goto_a
:sswitch_42
new-instance v0, Lcom/igexin/push/c/c/a;
invoke-direct {v0}, Lcom/igexin/push/c/c/a;-><init>()V
goto :goto_a
:sswitch_48
new-instance v0, Lcom/igexin/push/c/c/c;
invoke-direct {v0}, Lcom/igexin/push/c/c/c;-><init>()V
goto :goto_a
:sswitch_data_4e
.sparse-switch
0x4 -> :sswitch_12
0x5 -> :sswitch_18
0x6 -> :sswitch_2a
0x9 -> :sswitch_30
0x19 -> :sswitch_36
0x1a -> :sswitch_3c
0x1b -> :sswitch_48
0x1c -> :sswitch_42
0x24 -> :sswitch_1e
0x25 -> :sswitch_24
.end sparse-switch
.end method
.method static synthetic a(Lcom/igexin/push/d/c;Ljava/lang/String;)Ljava/util/List;
.registers 3
invoke-direct {p0, p1}, Lcom/igexin/push/d/c;->c(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/igexin/push/d/c;)V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/d/c;->d()V
return-void
.end method
.method private b([B)Lcom/igexin/push/c/c/b;
.registers 7
const/4 v4, 0x0
new-instance v0, Lcom/igexin/push/c/c/b;
invoke-direct {v0}, Lcom/igexin/push/c/c/b;-><init>()V
invoke-static {p1, v4}, Lcom/igexin/a/a/b/g;->b([BI)I
move-result v1
iput v1, v0, Lcom/igexin/push/c/c/b;->a:I
const/4 v1, 0x2
aget-byte v1, p1, v1
iput-byte v1, v0, Lcom/igexin/push/c/c/b;->b:B
iget v1, v0, Lcom/igexin/push/c/c/b;->a:I
new-array v1, v1, [B
iput-object v1, v0, Lcom/igexin/push/c/c/b;->d:[B
const/4 v1, 0x3
iget-object v2, v0, Lcom/igexin/push/c/c/b;->d:[B
iget v3, v0, Lcom/igexin/push/c/c/b;->a:I
invoke-static {p1, v1, v2, v4, v3}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
return-object v0
.end method
.method static synthetic b(Lcom/igexin/push/d/c;)Lcom/igexin/push/core/d;
.registers 2
iget-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
return-object v0
.end method
.method private b(Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
new-instance v1, Lcom/igexin/push/d/g;
invoke-direct {v1, p0, v0, p1}, Lcom/igexin/push/d/g;-><init>(Lcom/igexin/push/d/c;Lcom/igexin/push/d/b;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/igexin/push/d/b;->a(Landroid/content/ServiceConnection;)V
:try_start_10
iget-object v1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->a()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x3
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-virtual {v0}, Lcom/igexin/push/d/b;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
new-instance v3, Landroid/content/Intent;
invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->d()Landroid/content/ServiceConnection;
move-result-object v2
const/4 v4, 0x0
invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:goto_36
:try_end_36
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_3c
iget-object v1, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:catch_3c
move-exception v1
goto :goto_36
.end method
.method static synthetic c(Lcom/igexin/push/d/c;)Lcom/igexin/push/d/b;
.registers 2
iget-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
return-object v0
.end method
.method private c(Ljava/lang/String;)Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
:cond_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_37
return-object v1
.end method
.method private c()V
.registers 3
sget-object v0, Lcom/igexin/push/core/d;->a:Lcom/igexin/push/core/d;
iput-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
new-instance v0, Lcom/igexin/push/d/a;
invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V
sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;
invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-virtual {p0, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
return-void
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
sget-object v0, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;
iput-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
iget-boolean v0, p0, Lcom/igexin/push/d/c;->i:Z
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_17
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/igexin/push/d/c;->b(Ljava/lang/String;)V
goto :goto_17
:cond_2d
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/igexin/push/d/c;->i:Z
:cond_30
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->a(Z)V
return-void
.end method
.method static synthetic d(Lcom/igexin/push/d/c;)V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/d/c;->c()V
return-void
.end method
.method static synthetic e(Lcom/igexin/push/d/c;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
return-object v0
.end method
.method static synthetic f(Lcom/igexin/push/d/c;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
return-object v0
.end method
.method public a(Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
sget-object v2, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;
if-ne v1, v2, :cond_3b
const-string/jumbo v1, ""
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3b
iget-object v1, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
invoke-virtual {v1}, Lcom/igexin/push/e/b/h;->u()V
iget-object v1, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->clear()V
iget-object v1, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->clear()V
iput-boolean v0, p0, Lcom/igexin/push/d/c;->i:Z
iget-object v1, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->clear()V
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1, p1}, Lcom/igexin/push/d/b;->c(Ljava/lang/String;)V
sget-object v1, Lcom/igexin/push/core/d;->d:Lcom/igexin/push/core/d;
iput-object v1, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/d/j;->a(Z)V
:goto_3a
return v0
:cond_3b
const/4 v0, -0x1
goto :goto_3a
.end method
.method public a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
.registers 6
new-instance v0, Lcom/igexin/push/c/c/b;
invoke-direct {v0}, Lcom/igexin/push/c/c/b;-><init>()V
invoke-virtual {p2}, Lcom/igexin/push/c/c/e;->d()[B
move-result-object v1
iput-object v1, v0, Lcom/igexin/push/c/c/b;->d:[B
iget-object v1, v0, Lcom/igexin/push/c/c/b;->d:[B
if-eqz v1, :cond_3e
iget-object v1, v0, Lcom/igexin/push/c/c/b;->d:[B
array-length v1, v1
iput v1, v0, Lcom/igexin/push/c/c/b;->a:I
iget v1, p2, Lcom/igexin/push/c/c/e;->i:I
int-to-byte v1, v1
iput-byte v1, v0, Lcom/igexin/push/c/c/b;->b:B
invoke-virtual {v0}, Lcom/igexin/push/c/c/b;->a()[B
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
if-eqz v1, :cond_3e
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v1
if-eqz v1, :cond_3e
:try_start_29
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v1
iget-object v2, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v2}, Lcom/igexin/push/d/b;->e()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, p1, v0}, Lcom/igexin/sdk/aidl/IGexinMsgService;->sendByASNL(Ljava/lang/String;Ljava/lang/String;[B)I
:try_end_38
.catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_3a
move-result v0
:goto_39
return v0
:catch_3a
move-exception v0
invoke-direct {p0}, Lcom/igexin/push/d/c;->c()V
:cond_3e
const/4 v0, -0x1
goto :goto_39
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)I
.registers 5
iget-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
sget-object v1, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;
if-eq v0, v1, :cond_2e
iget-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
sget-object v1, Lcom/igexin/push/core/d;->d:Lcom/igexin/push/core/d;
if-eq v0, v1, :cond_2e
new-instance v0, Lcom/igexin/push/d/b;
invoke-direct {v0}, Lcom/igexin/push/d/b;-><init>()V
invoke-virtual {v0, p1}, Lcom/igexin/push/d/b;->a(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Lcom/igexin/push/d/b;->b(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/igexin/push/d/b;->c(Ljava/lang/String;)V
iget-object v1, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
sget-object v1, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;
if-ne v0, v1, :cond_2a
invoke-direct {p0, p1}, Lcom/igexin/push/d/c;->b(Ljava/lang/String;)V
:goto_28
const/4 v0, 0x0
:goto_29
return v0
:cond_2a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/d/c;->i:Z
goto :goto_28
:cond_2e
const/4 v0, -0x1
goto :goto_29
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;[B)I
.registers 7
invoke-direct {p0, p3}, Lcom/igexin/push/d/c;->a([B)Lcom/igexin/push/c/c/e;
move-result-object v1
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
if-eqz v0, :cond_24
sget-boolean v2, Lcom/igexin/push/core/g;->o:Z
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
invoke-virtual {v0, p2, v1}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
move-result v0
:goto_23
return v0
:cond_24
const/4 v0, -0x1
goto :goto_23
.end method
.method public a(Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
sget-object v0, Lcom/igexin/push/core/d;->a:Lcom/igexin/push/core/d;
iput-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
return-void
.end method
.method public a(Landroid/content/Intent;)V
.registers 12
const-wide/16 v3, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "com.igexin.sdk.action.snlrefresh"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9d
sget-boolean v0, Lcom/igexin/push/a/j;->s:Z
if-eqz v0, :cond_9d
const-string/jumbo v0, "groupid"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "responseSNLAction"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-boolean v2, Lcom/igexin/push/core/g;->l:Z
sget-boolean v3, Lcom/igexin/push/core/g;->m:Z
const-string/jumbo v4, "branch"
invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {v5, v6, v7}, Lcom/igexin/push/core/a/f;->a(J)Z
move-result v5
invoke-static {}, Lcom/igexin/push/core/q;->a()J
move-result-wide v6
invoke-static {}, Lcom/igexin/push/core/q;->b()J
move-result-wide v8
add-long/2addr v6, v8
sget-object v8, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
const-string/jumbo v0, "open"
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
if-eqz v2, :cond_9c
if-eqz v3, :cond_9c
if-nez v5, :cond_9c
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "groupid"
sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "branch"
const-string/jumbo v2, "open"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "pkgname"
sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "classname"
const-class v2, Lcom/igexin/sdk/PushService;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "startup_time"
sget-wide v2, Lcom/igexin/push/core/g;->V:J
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string/jumbo v1, "network_traffic"
invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_9c
:goto_9c
return-void
:cond_9d
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/g;->W:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_109
sget-boolean v0, Lcom/igexin/push/a/j;->s:Z
if-eqz v0, :cond_109
const-string/jumbo v0, "groupid"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "branch"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
const-string/jumbo v0, "open"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
new-instance v0, Lcom/igexin/push/d/i;
invoke-direct {v0}, Lcom/igexin/push/d/i;-><init>()V
const-string/jumbo v1, "groupid"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/i;->a(Ljava/lang/String;)V
const-string/jumbo v1, "pkgname"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/i;->b(Ljava/lang/String;)V
const-string/jumbo v1, "classname"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/i;->c(Ljava/lang/String;)V
const-string/jumbo v1, "startup_time"
invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/igexin/push/d/i;->a(J)V
const-string/jumbo v1, "network_traffic"
invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/igexin/push/d/i;->b(J)V
iget-object v1, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9c
:cond_109
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "com.igexin.sdk.action.snlretire"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
sget-boolean v0, Lcom/igexin/push/a/j;->s:Z
if-eqz v0, :cond_9c
const-string/jumbo v0, "groupid"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "branch"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
const-string/jumbo v0, "open"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9c
new-instance v0, Lcom/igexin/push/d/a;
invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V
sget-object v1, Lcom/igexin/push/core/c;->f:Lcom/igexin/push/core/c;
invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
goto/16 :goto_9c
.end method
.method public a(Lcom/igexin/push/d/a;)V
.registers 10
const/4 v1, 0x1
const/4 v4, 0x0
sget-object v0, Lcom/igexin/push/d/h;->b:[I
iget-object v2, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
invoke-virtual {v2}, Lcom/igexin/push/core/d;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_2f8
:cond_f
:goto_f
return-void
:pswitch_10
sget-object v0, Lcom/igexin/push/d/h;->a:[I
iget-object v2, p1, Lcom/igexin/push/d/a;->a:Lcom/igexin/push/core/c;
invoke-virtual {v2}, Lcom/igexin/push/core/c;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_304
goto :goto_f
:pswitch_1e
iget-object v0, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/igexin/push/d/c;->c:Lcom/igexin/push/e/b/h;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/igexin/push/d/c;->c:Lcom/igexin/push/e/b/h;
invoke-virtual {v0}, Lcom/igexin/push/e/b/h;->u()V
:cond_36
iget-object v0, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
invoke-virtual {v0}, Lcom/igexin/push/e/b/h;->u()V
:cond_3f
iput-boolean v4, p0, Lcom/igexin/push/d/c;->i:Z
sget-boolean v0, Lcom/igexin/push/core/g;->l:Z
sget-boolean v1, Lcom/igexin/push/core/g;->m:Z
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lcom/igexin/push/core/a/f;->a(J)Z
move-result v2
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v3
invoke-virtual {v3}, Lcom/igexin/push/core/a/f;->n()Z
move-result v3
if-eqz v0, :cond_f
if-eqz v1, :cond_f
if-nez v2, :cond_f
if-eqz v3, :cond_f
sget-boolean v0, Lcom/igexin/push/a/j;->s:Z
if-eqz v0, :cond_a5
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "com.igexin.sdk.action.snlrefresh"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "groupid"
sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "branch"
const-string/jumbo v2, "open"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "responseSNLAction"
sget-object v2, Lcom/igexin/push/core/g;->W:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
new-instance v0, Lcom/igexin/push/d/d;
const-wide/16 v1, 0x3e8
invoke-direct {v0, p0, v1, v2}, Lcom/igexin/push/d/d;-><init>(Lcom/igexin/push/d/c;J)V
iput-object v0, p0, Lcom/igexin/push/d/c;->c:Lcom/igexin/push/e/b/h;
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/d/c;->c:Lcom/igexin/push/e/b/h;
invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/e/b/h;)Z
move-result v0
if-nez v0, :cond_f
goto/16 :goto_f
:cond_a5
invoke-direct {p0}, Lcom/igexin/push/d/c;->d()V
goto/16 :goto_f
:pswitch_aa
iget-object v0, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_b7
invoke-direct {p0}, Lcom/igexin/push/d/c;->d()V
goto/16 :goto_f
:cond_b7
iget-object v0, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/i;
move v2, v1
move-object v1, v0
:goto_c1
if-ge v2, v3, :cond_dc
iget-object v0, p0, Lcom/igexin/push/d/c;->f:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/i;
invoke-virtual {v0}, Lcom/igexin/push/d/i;->c()J
move-result-wide v4
invoke-virtual {v1}, Lcom/igexin/push/d/i;->c()J
move-result-wide v6
cmp-long v4, v4, v6
if-gez v4, :cond_2f5
:goto_d7
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_c1
:cond_dc
iget-object v0, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Lcom/igexin/push/d/i;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f1
invoke-direct {p0}, Lcom/igexin/push/d/c;->d()V
goto/16 :goto_f
:cond_f1
sget-object v0, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;
iput-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
new-instance v0, Lcom/igexin/push/d/b;
invoke-direct {v0}, Lcom/igexin/push/d/b;-><init>()V
iput-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
iget-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/i;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/igexin/push/d/b;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/i;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/b;->b(Ljava/lang/String;)V
new-instance v0, Lcom/igexin/push/d/a;
invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V
sget-object v1, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;
invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-virtual {p0, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
goto/16 :goto_f
:pswitch_11d
iget-object v0, p0, Lcom/igexin/push/d/c;->c:Lcom/igexin/push/e/b/h;
if-eqz v0, :cond_126
iget-object v0, p0, Lcom/igexin/push/d/c;->c:Lcom/igexin/push/e/b/h;
invoke-virtual {v0}, Lcom/igexin/push/e/b/h;->u()V
:cond_126
invoke-direct {p0}, Lcom/igexin/push/d/c;->c()V
goto/16 :goto_f
:pswitch_12b
sget-object v0, Lcom/igexin/push/d/h;->a:[I
iget-object v1, p1, Lcom/igexin/push/d/a;->a:Lcom/igexin/push/core/c;
invoke-virtual {v1}, Lcom/igexin/push/core/c;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_310
goto/16 :goto_f
:pswitch_13a
iget-object v0, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
if-eqz v0, :cond_143
iget-object v0, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
invoke-virtual {v0}, Lcom/igexin/push/e/b/h;->u()V
:cond_143
iget-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v0
if-eqz v0, :cond_156
:try_start_14b
iget-object v0, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/b;->d()Landroid/content/ServiceConnection;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_156
.catch Ljava/lang/Exception; {:try_start_14b .. :try_end_156} :catch_2f2
:goto_156
:cond_156
invoke-direct {p0}, Lcom/igexin/push/d/c;->c()V
goto/16 :goto_f
:pswitch_15b
new-instance v0, Lcom/igexin/push/d/e;
const-wide/16 v1, 0x1388
invoke-direct {v0, p0, v1, v2}, Lcom/igexin/push/d/e;-><init>(Lcom/igexin/push/d/c;J)V
iput-object v0, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/d/c;->d:Lcom/igexin/push/e/b/h;
invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/e/b/h;)Z
move-result v0
if-nez v0, :cond_170
:cond_170
iget-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
new-instance v1, Lcom/igexin/push/d/f;
invoke-direct {v1, p0}, Lcom/igexin/push/d/f;-><init>(Lcom/igexin/push/d/c;)V
invoke-virtual {v0, v1}, Lcom/igexin/push/d/b;->a(Landroid/content/ServiceConnection;)V
:try_start_17a
iget-object v0, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/b;->a()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
iget-object v2, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v2}, Lcom/igexin/push/d/b;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
new-instance v2, Landroid/content/Intent;
invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/b;->d()Landroid/content/ServiceConnection;
move-result-object v1
const/4 v3, 0x0
invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:try_end_1a6
.catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1a6} :catch_1a8
goto/16 :goto_f
:catch_1a8
move-exception v0
goto/16 :goto_f
:pswitch_1ab
:try_start_1ab
iget-object v0, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v0
iget-object v1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/igexin/sdk/PushService;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, ""
const-wide/16 v4, 0x0
invoke-interface/range {v0 .. v5}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onPSNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
:try_end_1c5
.catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1c5} :catch_1c7
goto/16 :goto_f
:catch_1c7
move-exception v0
goto/16 :goto_f
:pswitch_1ca
sget-object v0, Lcom/igexin/push/d/h;->a:[I
iget-object v2, p1, Lcom/igexin/push/d/a;->a:Lcom/igexin/push/core/c;
invoke-virtual {v2}, Lcom/igexin/push/core/c;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_31c
:pswitch_1d7
goto/16 :goto_f
:pswitch_1d9
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/igexin/push/d/j;->a(Z)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->b(Z)V
sget-boolean v0, Lcom/igexin/push/a/j;->s:Z
if-eqz v0, :cond_277
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "com.igexin.sdk.action.snlretire"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "groupid"
sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "branch"
const-string/jumbo v2, "open"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
goto/16 :goto_f
:pswitch_216
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v1, "com.igexin.sdk.action.snlretire"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "groupid"
sget-object v2, Lcom/igexin/push/core/g;->f:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "branch"
const-string/jumbo v2, "open"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
goto/16 :goto_f
:pswitch_239
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sput-wide v0, Lcom/igexin/push/core/g;->V:J
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_249
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_267
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
:try_start_25b
iget-object v2, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->d()Landroid/content/ServiceConnection;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_264
.catch Ljava/lang/Exception; {:try_start_25b .. :try_end_264} :catch_265
goto :goto_249
:catch_265
move-exception v0
goto :goto_249
:cond_267
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/igexin/push/d/j;->a(Z)V
invoke-direct {p0}, Lcom/igexin/push/d/c;->c()V
goto/16 :goto_f
:cond_277
new-instance v0, Lcom/igexin/push/d/a;
invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V
sget-object v1, Lcom/igexin/push/core/c;->f:Lcom/igexin/push/core/c;
invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->f()Lcom/igexin/push/d/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
goto/16 :goto_f
:pswitch_28e
sget-object v0, Lcom/igexin/push/d/h;->a:[I
iget-object v2, p1, Lcom/igexin/push/d/a;->a:Lcom/igexin/push/core/c;
invoke-virtual {v2}, Lcom/igexin/push/core/c;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_32a
goto/16 :goto_f
:pswitch_29d
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-eqz v0, :cond_2cf
new-instance v0, Lcom/igexin/push/c/c/l;
invoke-direct {v0}, Lcom/igexin/push/c/c/l;-><init>()V
sget-wide v2, Lcom/igexin/push/core/g;->t:J
iput-wide v2, v0, Lcom/igexin/push/c/c/l;->a:J
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v2
invoke-virtual {v2}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "S-"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-wide v4, Lcom/igexin/push/core/g;->t:J
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3, v0}, Lcom/igexin/push/d/j;->a(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
:pswitch_2cf
:cond_2cf
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sput-wide v2, Lcom/igexin/push/core/g;->V:J
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->b(Z)V
:try_start_2e0
iget-object v0, p0, Lcom/igexin/push/d/c;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/igexin/push/d/c;->e:Lcom/igexin/push/d/b;
invoke-virtual {v1}, Lcom/igexin/push/d/b;->d()Landroid/content/ServiceConnection;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_2eb
.catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_2eb} :catch_2f0
:goto_2eb
invoke-direct {p0}, Lcom/igexin/push/d/c;->c()V
goto/16 :goto_f
:catch_2f0
move-exception v0
goto :goto_2eb
:catch_2f2
move-exception v0
goto/16 :goto_156
:cond_2f5
move-object v0, v1
goto/16 :goto_d7
:pswitch_data_310
.packed-switch 0x3
:pswitch_13a
:pswitch_13a
:pswitch_15b
:pswitch_1ab
.end packed-switch
:pswitch_data_32a
.packed-switch 0x3
:pswitch_29d
:pswitch_2cf
.end packed-switch
:pswitch_data_2f8
.packed-switch 0x1
:pswitch_10
:pswitch_12b
:pswitch_1ca
:pswitch_28e
.end packed-switch
:pswitch_data_304
.packed-switch 0x1
:pswitch_1e
:pswitch_aa
:pswitch_11d
:pswitch_11d
.end packed-switch
:pswitch_data_31c
.packed-switch 0x3
:pswitch_1d9
:pswitch_239
:pswitch_1d7
:pswitch_1d7
:pswitch_216
.end packed-switch
.end method
.method public a()Z
.registers 3
iget-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
sget-object v1, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;
if-ne v0, v1, :cond_2e
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
:try_start_22
invoke-virtual {v0}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v0
invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onASNLNetworkConnected()I
:try_end_29
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a
goto :goto_10
:catch_2a
move-exception v0
goto :goto_10
:cond_2c
const/4 v0, 0x1
:goto_2d
return v0
:cond_2e
const/4 v0, 0x0
goto :goto_2d
.end method
.method public b(Ljava/lang/String;Lcom/igexin/push/c/c/e;)I
.registers 9
new-instance v0, Lcom/igexin/push/c/c/b;
invoke-direct {v0}, Lcom/igexin/push/c/c/b;-><init>()V
invoke-virtual {p2}, Lcom/igexin/push/c/c/e;->d()[B
move-result-object v1
iput-object v1, v0, Lcom/igexin/push/c/c/b;->d:[B
iget-object v1, v0, Lcom/igexin/push/c/c/b;->d:[B
array-length v1, v1
iput v1, v0, Lcom/igexin/push/c/c/b;->a:I
iget v1, p2, Lcom/igexin/push/c/c/e;->i:I
int-to-byte v1, v1
iput-byte v1, v0, Lcom/igexin/push/c/c/b;->b:B
invoke-virtual {v0}, Lcom/igexin/push/c/c/b;->a()[B
move-result-object v1
iget-object v0, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
if-eqz v0, :cond_6e
:try_start_23
const-string/jumbo v2, "S-"
invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_52
const/4 v2, 0x2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/igexin/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "C-"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_52
invoke-virtual {v0}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v2
invoke-virtual {v0}, Lcom/igexin/push/d/b;->e()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3, p1, v1}, Lcom/igexin/sdk/aidl/IGexinMsgService;->receiveToPSNL(Ljava/lang/String;Ljava/lang/String;[B)I
:try_end_5d
.catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_5d} :catch_5f
move-result v0
:goto_5e
return v0
:catch_5f
move-exception v1
iget-object v1, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-virtual {v0}, Lcom/igexin/push/d/b;->e()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/igexin/push/d/c;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_6e
const/4 v0, -0x1
goto :goto_5e
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;[B)I
.registers 6
invoke-direct {p0, p3}, Lcom/igexin/push/d/c;->a([B)Lcom/igexin/push/c/c/e;
move-result-object v0
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/igexin/push/d/j;->a(Lcom/igexin/push/c/c/e;)V
const/4 v0, 0x0
return v0
.end method
.method public b()Z
.registers 3
iget-object v0, p0, Lcom/igexin/push/d/c;->b:Lcom/igexin/push/core/d;
sget-object v1, Lcom/igexin/push/core/d;->c:Lcom/igexin/push/core/d;
if-ne v0, v1, :cond_2e
iget-object v0, p0, Lcom/igexin/push/d/c;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/d/b;
:try_start_22
invoke-virtual {v0}, Lcom/igexin/push/d/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v0
invoke-interface {v0}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onASNLNetworkDisconnected()I
:try_end_29
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a
goto :goto_10
:catch_2a
move-exception v0
goto :goto_10
:cond_2c
const/4 v0, 0x1
:goto_2d
return v0
:cond_2e
const/4 v0, 0x0
goto :goto_2d
.end method