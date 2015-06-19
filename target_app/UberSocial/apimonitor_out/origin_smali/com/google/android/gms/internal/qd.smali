.class public Lcom/google/android/gms/internal/qd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/pp;

.field private final d:Lcom/google/android/gms/internal/id;

.field private final e:Ljava/util/Locale;

.field private final f:Lcom/google/android/gms/internal/qe;

.field private final g:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/qd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/qd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;Lcom/google/android/gms/internal/pp;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qd;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/pp;

    iput-object p2, p0, Lcom/google/android/gms/internal/qd;->e:Ljava/util/Locale;

    new-instance v0, Lcom/google/android/gms/internal/id;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/id;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->d:Lcom/google/android/gms/internal/id;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qd;->g:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->g:Ljava/util/LinkedHashSet;

    sget v1, Lcom/google/android/gms/g;->location_client_powered_by_google:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_35} :catch_3f

    :goto_35
    new-instance v2, Lcom/google/android/gms/internal/qe;

    iget-object v3, p0, Lcom/google/android/gms/internal/qd;->c:Lcom/google/android/gms/internal/pp;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/qe;-><init>(Lcom/google/android/gms/internal/pp;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/qd;->f:Lcom/google/android/gms/internal/qe;

    return-void

    :catch_3f
    move-exception v0

    const/4 v0, -0x1

    goto :goto_35
.end method
