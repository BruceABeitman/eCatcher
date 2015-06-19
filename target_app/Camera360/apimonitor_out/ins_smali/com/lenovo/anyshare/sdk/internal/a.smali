.class public Lcom/lenovo/anyshare/sdk/internal/a;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"
.implements Lcom/lenovo/anyshare/sdk/internal/b;
.field public static b:Z
.field private static c:Lcom/lenovo/anyshare/sdk/internal/a;
.field private static e:Ljava/util/Map;
.field private static f:[I
.field  a:Ljava/util/List;
.field private d:Z
.method static constructor <clinit>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
sput-boolean v1, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/16 v0, 0x8
new-array v0, v0, [I
fill-array-data v0, :array_84
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->f:[I
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "0to3M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/4 v1, 0x3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "0to3M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/4 v1, 0x5
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "3to5M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/16 v1, 0xa
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "5to10M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/16 v1, 0x14
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "10to20M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/16 v1, 0x32
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "20to50M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const/16 v1, 0x64
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "50to100M"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
const v1, 0xf423f
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string/jumbo v2, "100Mabove"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:array_84
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0xat 0x0t 0x0t 0x0t
0x14t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0x64t 0x0t 0x0t 0x0t
0x3ft 0x42t 0xft 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
return-void
.end method
.method public static a()Lcom/lenovo/anyshare/sdk/internal/a;
.registers 1
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
if-nez v0, :cond_b
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/a;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/a;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
:cond_b
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
.registers 2
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/c;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public static a(J)Ljava/lang/String;
.registers 11
const/4 v8, 0x0
const-wide/32 v2, 0x100000
:try_start_4
div-long v0, p0, v2
const/4 v7, 0x1
:goto_7
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/a;->f:[I
array-length v2, v2
if-ge v7, v2, :cond_2e
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/a;->f:[I
add-int/lit8 v3, v7, -0x1
aget v2, v2, v3
int-to-long v2, v2
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/a;->f:[I
aget v4, v4, v7
int-to-long v4, v4
invoke-static/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/a;->a(JJJ)Z
move-result v2
if-eqz v2, :cond_49
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/a;->e:Ljava/util/Map;
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/a;->f:[I
aget v3, v3, v7
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/String;
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_4c
:goto_2e
:cond_2e
const-string/jumbo v2, "Common.AnalyticsManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "range: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return-object v8
:cond_49
add-int/lit8 v7, v7, 0x1
goto :goto_7
:catch_4c
move-exception v6
const/4 v8, 0x0
goto :goto_2e
.end method
.method private static a(JJJ)Z
.registers 7
cmp-long v0, p0, p2
if-ltz v0, :cond_a
cmp-long v0, p0, p4
if-gez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static b()V
.registers 3
const/4 v2, 0x0
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
iput-object v2, v0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
sput-object v2, Lcom/lenovo/anyshare/sdk/internal/a;->c:Lcom/lenovo/anyshare/sdk/internal/a;
return-void
.end method
.method public static e()V
.registers 0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/c;->a()V
return-void
.end method
.method public a(Landroid/content/Context;)V
.registers 5
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/b;->a(Landroid/content/Context;)V
goto :goto_b
:cond_1b
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;)V
.registers 6
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/b;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_b
:cond_1b
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:cond_1b
return-void
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
.registers 7
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
goto :goto_b
:cond_1b
return-void
.end method
.method public a(Landroid/content/Context;Ljava/util/Collection;)V
.registers 4
iget-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;)V
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/a;->b(Landroid/content/Context;)V
goto :goto_4
.end method
.method public b(Landroid/content/Context;)V
.registers 5
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/b;->b(Landroid/content/Context;)V
goto :goto_b
:cond_1b
return-void
.end method
.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
iget-boolean v5, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/bc;
invoke-direct {v4, p1}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "Analytics"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v5, 0x0
invoke-virtual {v4, v3, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_3f
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_3b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2b
:cond_3b
const/4 v5, 0x1
invoke-virtual {v4, v3, v5}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;Z)V
:cond_3f
return-void
.end method
.method public c()V
.registers 4
iget-boolean v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/b;->c()V
goto :goto_b
:cond_1b
return-void
.end method
.method public d()I
.registers 5
iget-boolean v3, p0, Lcom/lenovo/anyshare/sdk/internal/a;->d:Z
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/a;->a:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/anyshare/sdk/internal/b;
invoke-interface {v0}, Lcom/lenovo/anyshare/sdk/internal/b;->d()I
move-result v1
if-lez v1, :cond_b
:goto_1d
return v1
:cond_1e
const/4 v1, 0x0
goto :goto_1d
.end method