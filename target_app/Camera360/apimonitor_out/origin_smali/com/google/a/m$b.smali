.class public final Lcom/google/a/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/a/m$b;

.field public static final b:Lcom/google/a/m$b;

.field public static final c:Lcom/google/a/m$b;

.field public static final d:Lcom/google/a/m$b;

.field public static final e:Lcom/google/a/m$b;

.field public static final f:Lcom/google/a/m$b;

.field public static final g:Lcom/google/a/m$b;

.field public static final h:Lcom/google/a/m$b;

.field public static final i:Lcom/google/a/m$b;


# instance fields
.field private final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/google/a/m$b;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->a:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->b:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    new-instance v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->c:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    new-instance v1, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->d:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->e:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->f:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    sget-object v1, Lcom/google/a/b;->a:Lcom/google/a/b;

    invoke-direct {v0, v1}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->g:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    invoke-direct {v0, v5}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->h:Lcom/google/a/m$b;

    new-instance v0, Lcom/google/a/m$b;

    invoke-direct {v0, v5}, Lcom/google/a/m$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/m$b;->i:Lcom/google/a/m$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/m$b;->j:Ljava/lang/Object;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/a/m$b;->j:Ljava/lang/Object;

    return-object v0
.end method
