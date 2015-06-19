.class public final Lcom/instagram/android/fragment/em;
.super Lcom/instagram/android/fragment/ee;
.source "SearchUsersFragment.java"


# instance fields
.field protected b:Lcom/instagram/android/l/a/a;

.field private c:Lcom/instagram/android/c/a/y;

.field private d:Landroid/content/BroadcastReceiver;

.field private final e:Lcom/instagram/api/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/android/l/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ee;-><init>()V

    new-instance v0, Lcom/instagram/android/fragment/en;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/en;-><init>(Lcom/instagram/android/fragment/em;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/em;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/fragment/eo;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/eo;-><init>(Lcom/instagram/android/fragment/em;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/em;->e:Lcom/instagram/api/j/f;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/em;)Lcom/instagram/android/c/a/y;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->c:Lcom/instagram/android/c/a/y;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/android/fragment/ee;->G()V

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->c:Lcom/instagram/android/c/a/y;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->c:Lcom/instagram/android/c/a/y;

    invoke-virtual {v0}, Lcom/instagram/android/c/a/y;->e()Lcom/instagram/android/util/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/util/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->c:Lcom/instagram/android/c/a/y;

    invoke-virtual {v0}, Lcom/instagram/android/c/a/y;->e()Lcom/instagram/android/util/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/analytics/e;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/em;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->c()V

    :cond_32
    return-void
.end method

.method protected final U()I
    .registers 2

    sget v0, Lcom/facebook/az;->search_for_a_user:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ee;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/instagram/android/c/a/y;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->y()Landroid/support/v4/app/an;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/fragment/em;->e:Lcom/instagram/api/j/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/c/a/y;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/f;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/em;->c:Lcom/instagram/android/c/a/y;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/em;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->X()Lcom/instagram/android/feed/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->c()Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/instagram/android/k/d;->a(Lcom/instagram/user/c/a;)V

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->r()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v2

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->X()Lcom/instagram/android/feed/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->c()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->c:Lcom/instagram/android/c/a/y;

    invoke-virtual {v0, p1}, Lcom/instagram/android/c/a/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .registers 2

    sget v0, Lcom/instagram/android/fragment/ei;->b:I

    return v0
.end method

.method protected final c()Landroid/widget/BaseAdapter;
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    if-nez v0, :cond_27

    new-instance v0, Lcom/instagram/android/l/a/f;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/l/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->y()Landroid/support/v4/app/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/f;->a(Landroid/support/v4/app/an;)Lcom/instagram/android/l/a/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/em;->r()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/l/a/f;->a(Landroid/support/v4/app/s;)Lcom/instagram/android/l/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/l/a/f;->a()Lcom/instagram/android/l/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    :cond_27
    iget-object v0, p0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    return-object v0
.end method

.method protected final d()Landroid/widget/Filter;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/em;->b:Lcom/instagram/android/l/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/l/a/a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "search_users"

    return-object v0
.end method
