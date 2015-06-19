.class public final Lcom/instagram/android/l/a/f;
.super Ljava/lang/Object;
.source "UserListAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/app/an;

.field private c:Landroid/support/v4/app/s;

.field private d:Lcom/instagram/ui/widget/loadmore/c;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/ui/widget/loadmore/f;

    invoke-direct {v0}, Lcom/instagram/ui/widget/loadmore/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/l/a/f;->d:Lcom/instagram/ui/widget/loadmore/c;

    iput-object p1, p0, Lcom/instagram/android/l/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/android/l/a/a;
    .registers 10

    new-instance v0, Lcom/instagram/android/l/a/a;

    iget-object v1, p0, Lcom/instagram/android/l/a/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instagram/android/l/a/f;->b:Landroid/support/v4/app/an;

    iget-object v3, p0, Lcom/instagram/android/l/a/f;->c:Landroid/support/v4/app/s;

    iget-boolean v4, p0, Lcom/instagram/android/l/a/f;->e:Z

    iget-boolean v5, p0, Lcom/instagram/android/l/a/f;->f:Z

    iget-boolean v6, p0, Lcom/instagram/android/l/a/f;->g:Z

    iget-object v7, p0, Lcom/instagram/android/l/a/f;->h:Lcom/instagram/user/follow/h;

    iget-object v8, p0, Lcom/instagram/android/l/a/f;->d:Lcom/instagram/ui/widget/loadmore/c;

    invoke-direct/range {v0 .. v8}, Lcom/instagram/android/l/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZZLcom/instagram/user/follow/h;Lcom/instagram/ui/widget/loadmore/c;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/app/an;)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/a/f;->b:Landroid/support/v4/app/an;

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/s;)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/a/f;->c:Landroid/support/v4/app/s;

    return-object p0
.end method

.method public final a(Lcom/instagram/ui/widget/loadmore/c;)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/a/f;->d:Lcom/instagram/ui/widget/loadmore/c;

    return-object p0
.end method

.method public final a(Lcom/instagram/user/follow/h;)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/a/f;->h:Lcom/instagram/user/follow/h;

    return-object p0
.end method

.method public final a(Z)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/l/a/f;->f:Z

    return-object p0
.end method

.method public final b(Z)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/l/a/f;->e:Z

    return-object p0
.end method

.method public final c(Z)Lcom/instagram/android/l/a/f;
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/l/a/f;->g:Z

    return-object p0
.end method
