.class public final Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Landroid/os/Handler;
.field static b:Lcom/squareup/picasso/Picasso;
.field final c:Landroid/content/Context;
.field final d:Lcom/squareup/picasso/j;
.field final e:Lcom/squareup/picasso/e;
.field final f:Lcom/squareup/picasso/af;
.field final g:Ljava/util/Map;
.field final h:Ljava/util/Map;
.field final i:Ljava/lang/ref/ReferenceQueue;
.field  j:Z
.field volatile k:Z
.field  l:Z
.field private final m:Lcom/squareup/picasso/x;
.field private final n:Lcom/squareup/picasso/y;
.field private final o:Lcom/squareup/picasso/w;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/squareup/picasso/Picasso$1;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$1;-><init>(Landroid/os/Looper;)V
sput-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
const/4 v0, 0x0
sput-object v0, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso;
return-void
.end method
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/x;Lcom/squareup/picasso/y;Lcom/squareup/picasso/af;ZZ)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/picasso/Picasso;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/squareup/picasso/Picasso;->d:Lcom/squareup/picasso/j;
iput-object p3, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/e;
iput-object p4, p0, Lcom/squareup/picasso/Picasso;->m:Lcom/squareup/picasso/x;
iput-object p5, p0, Lcom/squareup/picasso/Picasso;->n:Lcom/squareup/picasso/y;
iput-object p6, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/af;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Ljava/util/Map;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
iput-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;
iput-boolean p7, p0, Lcom/squareup/picasso/Picasso;->j:Z
iput-boolean p8, p0, Lcom/squareup/picasso/Picasso;->k:Z
new-instance v0, Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V
iput-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/lang/ref/ReferenceQueue;
new-instance v0, Lcom/squareup/picasso/w;
iget-object v1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/lang/ref/ReferenceQueue;
sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;
invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/w;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
iput-object v0, p0, Lcom/squareup/picasso/Picasso;->o:Lcom/squareup/picasso/w;
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->o:Lcom/squareup/picasso/w;
invoke-virtual {v0}, Lcom/squareup/picasso/w;->start()V
return-void
.end method
.method private a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V
.registers 9
iget-boolean v0, p3, Lcom/squareup/picasso/a;->j:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p3, Lcom/squareup/picasso/a;->i:Z
if-nez v0, :cond_14
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Ljava/util/Map;
iget-object v1, p3, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
if-eqz p1, :cond_44
if-nez p2, :cond_20
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "LoadedFrom cannot be null."
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_20
invoke-virtual {p3, p1, p2}, Lcom/squareup/picasso/a;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v0, :cond_4
const-string v0, "Main"
const-string v1, "completed"
iget-object v2, p3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;
invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "from "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
:cond_44
invoke-virtual {p3}, Lcom/squareup/picasso/a;->a()V
iget-boolean v0, p0, Lcom/squareup/picasso/Picasso;->k:Z
if-eqz v0, :cond_4
const-string v0, "Main"
const-string v1, "errored"
iget-object v2, p3, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;
invoke-virtual {v2}, Lcom/squareup/picasso/ab;->a()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
.end method
.method static synthetic a(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V
return-void
.end method
.method private a(Ljava/lang/Object;)V
.registers 6
invoke-static {}, Lcom/squareup/picasso/am;->a()V
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/a;
if-eqz v0, :cond_1e
invoke-virtual {v0}, Lcom/squareup/picasso/a;->b()V
iget-object v1, p0, Lcom/squareup/picasso/Picasso;->d:Lcom/squareup/picasso/j;
iget-object v2, v1, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
iget-object v1, v1, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
const/4 v3, 0x2
invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_1e
instance-of v0, p1, Landroid/widget/ImageView;
if-eqz v0, :cond_48
check-cast p1, Landroid/widget/ImageView;
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/i;
if-eqz v0, :cond_48
const/4 v1, 0x0
iput-object v1, v0, Lcom/squareup/picasso/i;->c:Lcom/squareup/picasso/f;
iget-object v1, v0, Lcom/squareup/picasso/i;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
if-eqz v1, :cond_48
invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v2
if-eqz v2, :cond_48
invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
:cond_48
return-void
.end method
.method final a(Lcom/squareup/picasso/ab;)Lcom/squareup/picasso/ab;
.registers 5
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->n:Lcom/squareup/picasso/y;
invoke-interface {v0, p1}, Lcom/squareup/picasso/y;->a(Lcom/squareup/picasso/ab;)Lcom/squareup/picasso/ab;
move-result-object v0
if-nez v0, :cond_31
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Request transformer "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/squareup/picasso/Picasso;->n:Lcom/squareup/picasso/y;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " returned null for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
return-object v0
.end method
.method public final a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
.registers 3
new-instance v0, Lcom/squareup/picasso/ad;
invoke-direct {v0, p0, p1}, Lcom/squareup/picasso/ad;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V
return-object v0
.end method
.method public final a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
.registers 4
if-nez p1, :cond_9
new-instance v0, Lcom/squareup/picasso/ad;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/squareup/picasso/ad;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V
:goto_8
return-object v0
:cond_9
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Path must not be empty."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
goto :goto_8
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/picasso/Picasso;->j:Z
return-void
.end method
.method public final a(Landroid/widget/ImageView;)V
.registers 2
invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V
return-void
.end method
.method final a(Lcom/squareup/picasso/a;)V
.registers 4
iget-object v0, p1, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_10
invoke-direct {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/squareup/picasso/Picasso;->g:Ljava/util/Map;
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_10
invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->b(Lcom/squareup/picasso/a;)V
return-void
.end method
.method public final a(Lcom/squareup/picasso/ai;)V
.registers 2
invoke-direct {p0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V
return-void
.end method
.method final a(Lcom/squareup/picasso/d;)V
.registers 10
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v3, p1, Lcom/squareup/picasso/d;->h:Lcom/squareup/picasso/a;
iget-object v4, p1, Lcom/squareup/picasso/d;->i:Ljava/util/List;
if-eqz v4, :cond_16
invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_16
move v2, v1
:goto_f
if-nez v3, :cond_13
if-eqz v2, :cond_18
:cond_13
:goto_13
if-nez v1, :cond_1a
:cond_15
:goto_15
return-void
:cond_16
move v2, v0
goto :goto_f
:cond_18
move v1, v0
goto :goto_13
:cond_1a
iget-object v1, p1, Lcom/squareup/picasso/d;->f:Lcom/squareup/picasso/ab;
iget-object v1, v1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;
iget-object v5, p1, Lcom/squareup/picasso/d;->m:Ljava/lang/Exception;
iget-object v6, p1, Lcom/squareup/picasso/d;->j:Landroid/graphics/Bitmap;
invoke-virtual {p1}, Lcom/squareup/picasso/d;->a()Lcom/squareup/picasso/Picasso$LoadedFrom;
move-result-object v7
if-eqz v3, :cond_2b
invoke-direct {p0, v6, v7, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V
:cond_2b
if-eqz v2, :cond_41
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v2
move v1, v0
:goto_32
if-ge v1, v2, :cond_41
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/squareup/picasso/a;
invoke-direct {p0, v6, v7, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;Lcom/squareup/picasso/a;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_32
:cond_41
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->m:Lcom/squareup/picasso/x;
if-eqz v0, :cond_15
if-eqz v5, :cond_15
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->m:Lcom/squareup/picasso/x;
goto :goto_15
.end method
.method final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 5
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->e:Lcom/squareup/picasso/e;
invoke-interface {v0, p1}, Lcom/squareup/picasso/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_e
iget-object v1, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/af;
invoke-virtual {v1}, Lcom/squareup/picasso/af;->a()V
:goto_d
return-object v0
:cond_e
iget-object v1, p0, Lcom/squareup/picasso/Picasso;->f:Lcom/squareup/picasso/af;
iget-object v1, v1, Lcom/squareup/picasso/af;->c:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
goto :goto_d
.end method
.method public final b()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/picasso/Picasso;->k:Z
return-void
.end method
.method final b(Lcom/squareup/picasso/a;)V
.registers 5
iget-object v0, p0, Lcom/squareup/picasso/Picasso;->d:Lcom/squareup/picasso/j;
iget-object v1, v0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
iget-object v0, v0, Lcom/squareup/picasso/j;->g:Landroid/os/Handler;
const/4 v2, 0x1
invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method