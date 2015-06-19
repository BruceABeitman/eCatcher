.class  Lcom/facebook/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:I = 0x0
.field private static final b:Ljava/lang/String; = "https://graph.facebook.com/%s/picture"
.field private static final c:Ljava/lang/String; = "height"
.field private static final d:Ljava/lang/String; = "width"
.field private static final e:Ljava/lang/String; = "migration_overrides"
.field private static final f:Ljava/lang/String; = "{october_2012:true}"
.field private g:Landroid/content/Context;
.field private h:Ljava/net/URL;
.field private i:Lcom/facebook/widget/w;
.field private j:Z
.field private k:Ljava/lang/Object;
.method private constructor <init>(Lcom/facebook/widget/v;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/facebook/widget/v;->a(Lcom/facebook/widget/v;)Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/u;->g:Landroid/content/Context;
invoke-static {p1}, Lcom/facebook/widget/v;->b(Lcom/facebook/widget/v;)Ljava/net/URL;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/u;->h:Ljava/net/URL;
invoke-static {p1}, Lcom/facebook/widget/v;->c(Lcom/facebook/widget/v;)Lcom/facebook/widget/w;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/u;->i:Lcom/facebook/widget/w;
invoke-static {p1}, Lcom/facebook/widget/v;->d(Lcom/facebook/widget/v;)Z
move-result v0
iput-boolean v0, p0, Lcom/facebook/widget/u;->j:Z
invoke-static {p1}, Lcom/facebook/widget/v;->e(Lcom/facebook/widget/v;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_29
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
:goto_26
iput-object v0, p0, Lcom/facebook/widget/u;->k:Ljava/lang/Object;
return-void
:cond_29
invoke-static {p1}, Lcom/facebook/widget/v;->e(Lcom/facebook/widget/v;)Ljava/lang/Object;
move-result-object v0
goto :goto_26
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/v;Lcom/facebook/widget/u$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/u;-><init>(Lcom/facebook/widget/v;)V
return-void
.end method
.method static a(Ljava/lang/String;II)Ljava/net/URL;
.registers 9
const/4 v5, 0x0
const-string v0, "userId"
invoke-static {p0, v0}, Lcom/facebook/b/q;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I
move-result v1
if-nez v0, :cond_1a
if-nez v1, :cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Either width or height must be greater than 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
new-instance v2, Landroid/net/Uri$Builder;
invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V
const-string v3, "https://graph.facebook.com/%s/picture"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
aput-object p0, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v2
if-eqz v1, :cond_39
const-string v3, "height"
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_39
if-eqz v0, :cond_44
const-string v1, "width"
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_44
const-string v0, "migration_overrides"
const-string v1, "{october_2012:true}"
invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
new-instance v0, Ljava/net/URL;
invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method  a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/u;->g:Landroid/content/Context;
return-object v0
.end method
.method  b()Ljava/net/URL;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/u;->h:Ljava/net/URL;
return-object v0
.end method
.method  c()Lcom/facebook/widget/w;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/u;->i:Lcom/facebook/widget/w;
return-object v0
.end method
.method  d()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/widget/u;->j:Z
return v0
.end method
.method  e()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/u;->k:Ljava/lang/Object;
return-object v0
.end method