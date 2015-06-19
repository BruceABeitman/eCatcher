.class Lcom/admarvel/android/ads/AdMarvelView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/ref/WeakReference;

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelView;ILjava/lang/String;Landroid/os/Handler;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->b:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->f:Ljava/lang/String;

    iput p7, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->g:I

    iput-object p8, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->i:Ljava/lang/ref/WeakReference;

    iput p10, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->j:I

    iput-object p11, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->l:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/16 v4, 0xb

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/admarvel/android/ads/AdMarvelView;

    if-eqz v2, :cond_3a

    if-eqz v9, :cond_3a

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    if-lt v0, v4, :cond_3b

    iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->l:Landroid/os/Handler;

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$c;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->a:Ljava/io/File;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->f:Ljava/lang/String;

    iget v7, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->g:I

    iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->h:Ljava/lang/String;

    iget v10, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->j:I

    iget-object v11, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->k:Ljava/lang/String;

    iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->l:Landroid/os/Handler;

    invoke-direct/range {v0 .. v12}, Lcom/admarvel/android/ads/AdMarvelView$c;-><init>(Ljava/io/File;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelView;ILjava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    new-instance v0, Lcom/admarvel/android/ads/q;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->a:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lcom/admarvel/android/ads/q;-><init>(Ljava/io/File;Landroid/content/Context;)V

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->c:Ljava/util/Map;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v9, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$b;->l:Landroid/os/Handler;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-virtual {v9}, Lcom/admarvel/android/ads/AdMarvelView;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v9}, Lcom/admarvel/android/ads/AdMarvelView;->h(Lcom/admarvel/android/ads/AdMarvelView;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3a
.end method
