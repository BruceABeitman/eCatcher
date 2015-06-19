.class public final Lcom/bbm/util/o;
.super Ljava/lang/Object;
.source "ChannelCloudImageData.java"
.field private static m:Lcom/bbm/d/fd;
.field public a:I
.field public b:I
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/String;
.field  f:Ljava/lang/String;
.field public final g:Ljava/lang/String;
.field  h:Ljava/lang/ref/WeakReference;
.field  i:Lcom/bbm/ui/ObservingImageView;
.field  j:Lcom/bbm/j/k;
.field  k:Ljava/lang/ref/WeakReference;
.field private final l:Ljava/lang/String;
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v1, -0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/bbm/util/o;->a:I
iput v1, p0, Lcom/bbm/util/o;->b:I
iput-object v0, p0, Lcom/bbm/util/o;->c:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/util/o;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/util/o;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/util/o;->f:Ljava/lang/String;
:try_start_11
const-string v0, "width"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/bbm/util/o;->a:I
const-string v0, "height"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/bbm/util/o;->b:I
const-string v0, "url"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/o;->c:Ljava/lang/String;
const-string v0, "type"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/o;->e:Ljava/lang/String;
:try_end_31
.catch Lorg/json/JSONException; {:try_start_11 .. :try_end_31} :catch_36
:goto_31
iput-object p2, p0, Lcom/bbm/util/o;->g:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/util/o;->l:Ljava/lang/String;
return-void
:catch_36
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_31
.end method
.method private static b()Lcom/bbm/d/fd;
.registers 2
sget-object v0, Lcom/bbm/util/o;->m:Lcom/bbm/d/fd;
if-nez v0, :cond_13
new-instance v0, Lcom/bbm/d/fd;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/d/a;->m()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
sput-object v0, Lcom/bbm/util/o;->m:Lcom/bbm/d/fd;
:cond_13
sget-object v0, Lcom/bbm/util/o;->m:Lcom/bbm/d/fd;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/util/o;->k:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/util/o;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/util/o;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/ez;
invoke-virtual {v0}, Lcom/bbm/util/ez;->a()Z
:cond_17
return-void
.end method
.method public final a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;IIZ)V
return-void
.end method
.method public final a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;IIZ)V
.registers 14
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/util/o;->h:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/bbm/util/o;->h:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/cr;
:goto_d
iput-object p1, p0, Lcom/bbm/util/o;->i:Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_1b
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v2
invoke-static {}, Lcom/bbm/util/o;->b()Lcom/bbm/d/fd;
move-result-object v3
if-ne v2, v3, :cond_59
:cond_1b
iget-object v0, p0, Lcom/bbm/util/o;->f:Ljava/lang/String;
if-nez v0, :cond_3f
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_24
const-string v2, "channelUri"
iget-object v3, p0, Lcom/bbm/util/o;->l:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "postId"
iget-object v3, p0, Lcom/bbm/util/o;->g:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "url"
iget-object v3, p0, Lcom/bbm/util/o;->c:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_39
:try_end_39
.catch Lorg/json/JSONException; {:try_start_24 .. :try_end_39} :catch_8d
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/o;->f:Ljava/lang/String;
:cond_3f
iget-object v0, p0, Lcom/bbm/util/o;->d:Ljava/lang/String;
if-eqz v0, :cond_4b
if-eqz p2, :cond_4b
iget-object v0, p0, Lcom/bbm/util/o;->d:Ljava/lang/String;
invoke-virtual {p2, v0}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v1
:cond_4b
if-eqz v1, :cond_63
new-instance v0, Lcom/bbm/util/cr;
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/util/o;->h:Ljava/lang/ref/WeakReference;
:try_start_59
:cond_59
:goto_59
invoke-virtual {p1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
:try_end_60
.catch Lcom/bbm/j/z; {:try_start_59 .. :try_end_60} :catch_8b
:goto_60
return-void
:cond_61
move-object v0, v1
goto :goto_d
:cond_63
new-instance v7, Lcom/bbm/util/cr;
invoke-static {}, Lcom/bbm/util/o;->b()Lcom/bbm/d/fd;
move-result-object v0
invoke-direct {v7, v0}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/o;->h:Ljava/lang/ref/WeakReference;
iget-object v0, p0, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;
if-nez v0, :cond_89
new-instance v0, Lcom/bbm/util/p;
move-object v1, p0
move v2, p5
move-object v3, p1
move v4, p3
move v5, p4
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/bbm/util/p;-><init>(Lcom/bbm/util/o;ZLcom/bbm/ui/ObservingImageView;IILcom/bbm/util/b/d;)V
iput-object v0, p0, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;
iget-object v0, p0, Lcom/bbm/util/o;->j:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
:cond_89
move-object v0, v7
goto :goto_59
:catch_8b
move-exception v0
goto :goto_60
:catch_8d
move-exception v2
goto :goto_39
.end method