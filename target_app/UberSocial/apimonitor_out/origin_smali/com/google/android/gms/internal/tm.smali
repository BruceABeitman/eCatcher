.class public final Lcom/google/android/gms/internal/tm;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/widget/ViewSwitcher;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/sw;

.field public final e:Lcom/google/android/gms/internal/db;

.field public f:Lcom/google/android/gms/internal/e;

.field public g:Lcom/google/android/gms/internal/dq;

.field public h:Lcom/google/android/gms/internal/ab;

.field public i:Lcom/google/android/gms/internal/dj;

.field public j:Lcom/google/android/gms/internal/dk;

.field public k:Lcom/google/android/gms/internal/n;

.field public l:Lcom/google/android/gms/internal/do;

.field private m:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/tm;->l:Lcom/google/android/gms/internal/do;

    iput-object v1, p0, Lcom/google/android/gms/internal/tm;->m:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ab;->e:Z

    if-eqz v0, :cond_24

    iput-object v1, p0, Lcom/google/android/gms/internal/tm;->a:Landroid/widget/ViewSwitcher;

    :goto_e
    iput-object p2, p0, Lcom/google/android/gms/internal/tm;->h:Lcom/google/android/gms/internal/ab;

    iput-object p3, p0, Lcom/google/android/gms/internal/tm;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/tm;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/sw;

    iget-object v1, p4, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/sm;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/sm;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/sw;-><init>(Lcom/google/android/gms/internal/oo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/tm;->d:Lcom/google/android/gms/internal/sw;

    iput-object p4, p0, Lcom/google/android/gms/internal/tm;->e:Lcom/google/android/gms/internal/db;

    return-void

    :cond_24
    new-instance v0, Landroid/widget/ViewSwitcher;

    invoke-direct {v0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/tm;->a:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->a:Landroid/widget/ViewSwitcher;

    iget v1, p2, Lcom/google/android/gms/internal/ab;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->a:Landroid/widget/ViewSwitcher;

    iget v1, p2, Lcom/google/android/gms/internal/ab;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_e
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tm;->m:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/tm;->m:Ljava/util/HashSet;

    return-void
.end method