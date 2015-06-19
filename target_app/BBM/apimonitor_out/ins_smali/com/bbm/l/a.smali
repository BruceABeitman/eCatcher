.class public final Lcom/bbm/l/a;
.super Ljava/lang/Object;
.source "PaymentController.java"
.field private static a:Lcom/bbm/l/a;
.field private static b:I
.field private static final c:Lcom/bbm/d/a;
.field private static d:Lcom/bbm/l/d/b;
.field private static e:Lcom/bbm/l/b/m;
.field private static f:Landroid/app/Activity;
.field private static g:Ljava/lang/String;
.field private static h:Landroid/content/Context;
.field private static i:Lcom/bbm/f/ac;
.field private static j:Lcom/bbm/l/b/c;
.field private static k:Ljava/util/Map;
.field private static l:Lcom/bbm/l/d/d;
.field private static m:Lcom/bbm/l/d/d;
.field private static final n:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
sput-object v0, Lcom/bbm/l/a;->c:Lcom/bbm/d/a;
const-string v0, "^com_blackberry_bbm(_....)?_stickerpack_(.+)$"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/bbm/l/a;->n:Ljava/util/regex/Pattern;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sput-object p1, Lcom/bbm/l/a;->h:Landroid/content/Context;
sget-object v0, Lcom/bbm/l/a;->k:Ljava/util/Map;
if-nez v0, :cond_10
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/bbm/l/a;->k:Ljava/util/Map;
:cond_10
invoke-static {}, Lcom/bbm/l/b/c;->a()Lcom/bbm/l/b/c;
move-result-object v0
sput-object v0, Lcom/bbm/l/a;->j:Lcom/bbm/l/b/c;
sget-object v0, Lcom/bbm/l/a;->c:Lcom/bbm/d/a;
new-instance v1, Lcom/bbm/d/cg;
invoke-direct {v1}, Lcom/bbm/d/cg;-><init>()V
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
sget-object v0, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
if-nez v0, :cond_36
new-instance v0, Lcom/bbm/l/c;
invoke-direct {v0}, Lcom/bbm/l/c;-><init>()V
sput-object v0, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
sget-object v0, Lcom/bbm/l/a;->c:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
sget-object v1, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
:cond_36
sget-object v0, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;
sput-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
sget-object v0, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;
sput-object v0, Lcom/bbm/l/a;->m:Lcom/bbm/l/d/d;
sget-object v0, Lcom/bbm/l/a;->h:Landroid/content/Context;
invoke-static {v0}, Lcom/bbm/l/d/b/c;->a(Landroid/content/Context;)Lcom/bbm/l/d/b/c;
move-result-object v0
if-eqz v0, :cond_5a
sget-object v1, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v1}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v1
if-eqz v1, :cond_53
sget-object v1, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v1}, Lcom/bbm/l/a;->b(Lcom/bbm/l/d/d;)V
:cond_53
sget-object v1, Lcom/bbm/l/a;->k:Ljava/util/Map;
sget-object v2, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5a
new-instance v1, Lcom/bbm/l/b;
invoke-direct {v1, p0, v0}, Lcom/bbm/l/b;-><init>(Lcom/bbm/l/a;Lcom/bbm/l/d/b/c;)V
invoke-virtual {v1}, Lcom/bbm/l/b;->c()V
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/bbm/l/a;
.registers 3
sget-object v0, Lcom/bbm/l/a;->a:Lcom/bbm/l/a;
if-nez v0, :cond_b
new-instance v0, Lcom/bbm/l/a;
invoke-direct {v0, p0}, Lcom/bbm/l/a;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/bbm/l/a;->a:Lcom/bbm/l/a;
:cond_b
sget v0, Lcom/bbm/l/a;->b:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/bbm/l/a;->b:I
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "PaymentController instance:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v1, Lcom/bbm/l/a;->b:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/l/a;->a:Lcom/bbm/l/a;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/l/b/c;)Lcom/bbm/l/b/c;
.registers 1
sput-object p0, Lcom/bbm/l/a;->j:Lcom/bbm/l/b/c;
return-object p0
.end method
.method private static a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
.registers 2
sget-object v0, Lcom/bbm/l/a;->k:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/a;
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/bbm/l/a;->n:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-eqz v1, :cond_12
const/4 v1, 0x2
invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
:goto_11
return-object v0
:cond_12
const-string v0, ""
goto :goto_11
.end method
.method public static a(Landroid/app/Activity;Z)V
.registers 4
sget-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
if-eqz v0, :cond_d
sget-object v1, Lcom/bbm/l/a;->a:Lcom/bbm/l/a;
invoke-interface {v0, p0, p1, v1}, Lcom/bbm/l/d/a;->a(Landroid/app/Activity;ZLcom/bbm/l/a;)V
:cond_d
return-void
.end method
.method public static a(Ljava/lang/String;Lcom/bbm/l/d/b/t;)V
.registers 3
sget-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
if-eqz v0, :cond_b
invoke-interface {v0, p0, p1}, Lcom/bbm/l/d/a;->a(Ljava/lang/String;Lcom/bbm/l/d/b/t;)V
:cond_b
return-void
.end method
.method public static a(Ljava/util/List;Lcom/bbm/l/e;Lcom/bbm/l/d;)V
.registers 8
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_55
sget-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v1
if-eqz v1, :cond_65
invoke-interface {v1, p1}, Lcom/bbm/l/d/a;->a(Lcom/bbm/l/e;)V
invoke-interface {v1}, Lcom/bbm/l/d/a;->e()Lcom/bbm/l/d;
move-result-object v0
if-eqz v0, :cond_22
invoke-interface {v1}, Lcom/bbm/l/d/a;->e()Lcom/bbm/l/d;
move-result-object v0
invoke-interface {v1}, Lcom/bbm/l/d/a;->f()Ljava/util/ArrayList;
move-result-object v2
invoke-interface {v0, v2}, Lcom/bbm/l/d;->a(Ljava/util/List;)V
:cond_22
invoke-interface {v1, p2}, Lcom/bbm/l/d/a;->a(Lcom/bbm/l/d;)V
invoke-interface {v1}, Lcom/bbm/l/d/a;->g()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_65
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/b/x;
invoke-interface {v1, v0, p1}, Lcom/bbm/l/d/a;->a(Lcom/bbm/l/d/c;Lcom/bbm/l/e;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v4
invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v4
invoke-interface {v1, v4, v0}, Lcom/bbm/l/d/a;->a(Ljava/lang/String;Lcom/bbm/l/d/b/x;)V
sget-object v0, Lcom/bbm/l/a;->c:Lcom/bbm/d/a;
invoke-static {v3}, Lcom/bbm/d/z;->g(Ljava/lang/String;)Lcom/bbm/d/dt;
move-result-object v3
invoke-virtual {v3, v4}, Lcom/bbm/d/dt;->a(Ljava/lang/String;)Lcom/bbm/d/dt;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
goto :goto_2c
:cond_55
const-string v0, "purchase can not be null for validatePurchase check"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p2, v0}, Lcom/bbm/l/d;->a(Ljava/util/List;)V
:cond_65
return-void
.end method
.method public static a()Z
.registers 6
sget-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
if-eqz v0, :cond_2d
invoke-interface {v0}, Lcom/bbm/l/d/a;->a()Z
move-result v1
if-eqz v1, :cond_2d
sget-object v1, Lcom/bbm/l/a;->f:Landroid/app/Activity;
if-eqz v1, :cond_2d
sget-object v1, Lcom/bbm/l/a;->e:Lcom/bbm/l/b/m;
if-eqz v1, :cond_2d
sget-object v1, Lcom/bbm/l/a;->d:Lcom/bbm/l/d/b;
if-eqz v1, :cond_2d
sget-object v1, Lcom/bbm/l/a;->f:Landroid/app/Activity;
sget-object v2, Lcom/bbm/l/a;->e:Lcom/bbm/l/b/m;
iget-object v2, v2, Lcom/bbm/l/b/l;->b:Ljava/lang/String;
sget-object v3, Lcom/bbm/l/d/d;->b:Lcom/bbm/l/d/d;
iget v3, v3, Lcom/bbm/l/d/d;->d:I
sget-object v4, Lcom/bbm/l/a;->d:Lcom/bbm/l/d/b;
sget-object v5, Lcom/bbm/l/a;->g:Ljava/lang/String;
invoke-interface/range {v0 .. v5}, Lcom/bbm/l/d/a;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/bbm/l/d/b;Ljava/lang/String;)Z
const/4 v0, 0x1
:goto_2c
return v0
:cond_2d
const/4 v0, 0x0
goto :goto_2c
.end method
.method public static a(IILandroid/content/Intent;)Z
.registers 5
invoke-static {p0}, Lcom/bbm/l/d/d;->a(I)Lcom/bbm/l/d/d;
move-result-object v0
sget-object v1, Lcom/bbm/l/d/d;->a:Lcom/bbm/l/d/d;
if-eq v0, v1, :cond_17
invoke-static {p0}, Lcom/bbm/l/d/d;->a(I)Lcom/bbm/l/d/d;
move-result-object v0
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
if-eqz v0, :cond_17
invoke-interface {v0, p0, p1, p2}, Lcom/bbm/l/d/a;->a(IILandroid/content/Intent;)Z
move-result v0
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public static a(Landroid/app/Activity;Lcom/bbm/l/b/m;Lcom/bbm/l/d/b;Ljava/lang/String;)Z
.registers 10
const/4 v3, 0x0
sput-object p0, Lcom/bbm/l/a;->f:Landroid/app/Activity;
sput-object p1, Lcom/bbm/l/a;->e:Lcom/bbm/l/b/m;
sput-object p2, Lcom/bbm/l/a;->d:Lcom/bbm/l/d/b;
sput-object p3, Lcom/bbm/l/a;->g:Ljava/lang/String;
sget-object v0, Lcom/bbm/l/a;->j:Lcom/bbm/l/b/c;
if-eqz v0, :cond_2f
sget-object v0, Lcom/bbm/l/a;->j:Lcom/bbm/l/b/c;
iget-boolean v0, v0, Lcom/bbm/l/b/c;->c:Z
if-eqz v0, :cond_2f
sget-object v0, Lcom/bbm/l/a;->f:Landroid/app/Activity;
invoke-static {v0}, Lcom/bbm/l/d/a/a;->a(Landroid/content/Context;)Lcom/bbm/l/d/a/a;
move-result-object v0
if-eqz v0, :cond_2f
sget-object v1, Lcom/bbm/l/a;->m:Lcom/bbm/l/d/d;
invoke-static {v1}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v1
if-eqz v1, :cond_28
sget-object v1, Lcom/bbm/l/a;->m:Lcom/bbm/l/d/d;
invoke-static {v1}, Lcom/bbm/l/a;->b(Lcom/bbm/l/d/d;)V
:cond_28
sget-object v1, Lcom/bbm/l/a;->k:Ljava/util/Map;
sget-object v2, Lcom/bbm/l/a;->m:Lcom/bbm/l/d/d;
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2f
iget-object v2, p1, Lcom/bbm/l/b/m;->k:Ljava/lang/String;
const-string v0, ""
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
const-string v0, "No contentID for this sticker pack."
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/l/a;->a()Z
move-result v0
:goto_44
return v0
:cond_45
sget-object v0, Lcom/bbm/l/a;->f:Landroid/app/Activity;
sget-object v0, Lcom/bbm/l/a;->j:Lcom/bbm/l/b/c;
invoke-static {v0}, Lcom/bbm/l/d/a/a;->a(Lcom/bbm/l/b/c;)Z
move-result v0
if-eqz v0, :cond_6a
sget-object v0, Lcom/bbm/l/a;->m:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
if-eqz v0, :cond_6a
iget-object v1, p1, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/bbm/l/d/a;->a(Ljava/lang/String;)V
sget-object v1, Lcom/bbm/l/a;->f:Landroid/app/Activity;
sget-object v3, Lcom/bbm/l/d/d;->c:Lcom/bbm/l/d/d;
iget v3, v3, Lcom/bbm/l/d/d;->d:I
sget-object v4, Lcom/bbm/l/a;->d:Lcom/bbm/l/d/b;
move-object v5, p3
invoke-interface/range {v0 .. v5}, Lcom/bbm/l/d/a;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/bbm/l/d/b;Ljava/lang/String;)Z
move-result v0
goto :goto_44
:cond_6a
const-string v0, "No payment config available or carrier billing is not enabled."
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/l/a;->a()Z
move-result v0
goto :goto_44
.end method
.method public static b()V
.registers 5
const/4 v4, 0x0
const/4 v3, 0x0
sget-object v0, Lcom/bbm/l/a;->k:Ljava/util/Map;
if-eqz v0, :cond_2c
sget v0, Lcom/bbm/l/a;->b:I
add-int/lit8 v0, v0, -0x1
sput v0, Lcom/bbm/l/a;->b:I
if-gtz v0, :cond_2c
sget-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
if-eqz v0, :cond_2d
invoke-interface {v0}, Lcom/bbm/l/d/a;->b()Z
move-result v1
if-eqz v1, :cond_2d
invoke-interface {v0}, Lcom/bbm/l/d/a;->c()V
sget v0, Lcom/bbm/l/a;->b:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/bbm/l/a;->b:I
const-string v0, "Restore in progress, delaying IabHelper dispose"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_2c
:goto_2c
return-void
:cond_2d
sget-object v0, Lcom/bbm/l/a;->k:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_37
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/d;
sget-object v2, Lcom/bbm/l/a;->k:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/a;
invoke-interface {v0}, Lcom/bbm/l/d/a;->h()V
goto :goto_37
:cond_4f
const-string v0, "Payment method(s) disposed"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
sput-object v4, Lcom/bbm/l/a;->a:Lcom/bbm/l/a;
sget-object v0, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
if-eqz v0, :cond_2c
sget-object v0, Lcom/bbm/l/a;->c:Lcom/bbm/d/a;
iget-object v0, v0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
sget-object v1, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
sput-object v4, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
goto :goto_2c
.end method
.method private static b(Lcom/bbm/l/d/d;)V
.registers 2
sget-object v0, Lcom/bbm/l/a;->k:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public static c()Lcom/bbm/util/bh;
.registers 1
sget-object v0, Lcom/bbm/l/a;->l:Lcom/bbm/l/d/d;
invoke-static {v0}, Lcom/bbm/l/a;->a(Lcom/bbm/l/d/d;)Lcom/bbm/l/d/a;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/l/d/a;->d()Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method static synthetic d()Landroid/content/Context;
.registers 1
sget-object v0, Lcom/bbm/l/a;->h:Landroid/content/Context;
return-object v0
.end method
.method static synthetic e()Lcom/bbm/f/ac;
.registers 1
sget-object v0, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
return-object v0
.end method
.method static synthetic f()Lcom/bbm/d/a;
.registers 1
sget-object v0, Lcom/bbm/l/a;->c:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic g()Lcom/bbm/f/ac;
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/bbm/l/a;->i:Lcom/bbm/f/ac;
return-object v0
.end method