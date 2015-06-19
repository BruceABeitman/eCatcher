.class public abstract Lcom/b/a/a/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:D

.field public c:D

.field public d:D

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/b/a/a/a/a/g;-><init>(III)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/b/a/a/a/a/g;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/a/a/a/g;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/b/a/a/a/a/g;->b:D

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/b/a/a/a/a/g;->c:D

    float-to-double v0, p3

    iput-wide v0, p0, Lcom/b/a/a/a/a/g;->d:D

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/b/a/a/a/a/g;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/a/a/a/g;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/b/a/a/a/a/g;->b:D

    int-to-double v0, p2

    iput-wide v0, p0, Lcom/b/a/a/a/a/g;->c:D

    int-to-double v0, p3

    iput-wide v0, p0, Lcom/b/a/a/a/a/g;->d:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/b/a/a/a/a/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/a/a/a/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/a/g;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/b/a/a/a/a/g;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/b/a/a/a/a/g;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(IIII)Lcom/b/a/a/a/a/m;
.end method
