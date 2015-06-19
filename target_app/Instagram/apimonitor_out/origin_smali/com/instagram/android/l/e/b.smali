.class public Lcom/instagram/android/l/e/b;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/l/e/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/e/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/e/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/l/e/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/e/b;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/android/l/e/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/e/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/instagram/android/l/e/b;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/e/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/l/e/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/l/e/b;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic c(Lcom/instagram/android/l/e/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/e/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/l/e/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/l/e/b;->d:Ljava/lang/String;

    return-object v0
.end method
