.class public final Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bj;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/bn;

.field public final c:Lcom/google/android/gms/internal/tk;

.field public final d:Lcom/google/android/gms/internal/bk;

.field public final e:Lcom/google/android/gms/internal/ec;

.field public final f:Lcom/google/android/gms/internal/w;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/bp;

.field public final k:I

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/db;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/bj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bq;->CREATOR:Lcom/google/android/gms/internal/bj;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/bn;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    invoke-static {p3}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tk;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    invoke-static {p4}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bk;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    invoke-static {p5}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ec;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    invoke-static {p6}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/w;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bp;

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    iput p11, p0, Lcom/google/android/gms/internal/bq;->k:I

    iput p12, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object p13, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/db;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ILcom/google/android/gms/internal/db;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    iput p5, p0, Lcom/google/android/gms/internal/bq;->k:I

    iput v2, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ZILcom/google/android/gms/internal/db;)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    iput p6, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ZILjava/lang/String;Lcom/google/android/gms/internal/db;)V
    .registers 12

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    iput p7, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/tk;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/ec;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bq;->a:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;

    iput-object p1, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    iput-object p5, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    iput-object p3, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    iput-object p9, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/bq;->h:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    iput p7, p0, Lcom/google/android/gms/internal/bq;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bq;->l:I

    iput-object v1, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/internal/bq;
    .registers 3

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/bq;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bq;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Landroid/content/Intent;Lcom/google/android/gms/internal/bq;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->c:Lcom/google/android/gms/internal/tk;

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->d:Lcom/google/android/gms/internal/bk;

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method c()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->e:Lcom/google/android/gms/internal/ec;

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->f:Lcom/google/android/gms/internal/w;

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method e()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->j:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bq;Landroid/os/Parcel;I)V

    return-void
.end method
