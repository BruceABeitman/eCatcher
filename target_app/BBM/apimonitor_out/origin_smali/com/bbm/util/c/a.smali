.class public final Lcom/bbm/util/c/a;
.super Ljava/lang/Object;
.source "InlineImageSet.java"


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field final a:Lcom/bbm/util/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/c/h",
            "<",
            "Lcom/bbm/util/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bbm/util/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/c/h",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ftp:/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mailto:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "file:/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pin:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/util/c/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/util/c/h;

    invoke-direct {v0}, Lcom/bbm/util/c/h;-><init>()V

    iput-object v0, p0, Lcom/bbm/util/c/a;->c:Lcom/bbm/util/c/h;

    sget-object v2, Lcom/bbm/util/c/a;->b:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_10
    if-ge v0, v3, :cond_57

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/bbm/util/c/a;->c:Lcom/bbm/util/c/h;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/bbm/util/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/bbm/util/c/a;->c:Lcom/bbm/util/c/h;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/bbm/util/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/bbm/util/c/a;->c:Lcom/bbm/util/c/h;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/bbm/util/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_57
    new-instance v0, Lcom/bbm/util/c/h;

    const/16 v1, 0x3dd

    iget-object v2, p0, Lcom/bbm/util/c/a;->c:Lcom/bbm/util/c/h;

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/c/h;-><init>(ILcom/bbm/util/c/h;)V

    iput-object v0, p0, Lcom/bbm/util/c/a;->a:Lcom/bbm/util/c/h;

    iget-object v0, p0, Lcom/bbm/util/c/a;->a:Lcom/bbm/util/c/h;

    iput-boolean v9, v0, Lcom/bbm/util/c/h;->a:Z

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/bbm/util/c/b;)V
    .registers 5

    iget v0, p2, Lcom/bbm/util/c/b;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/bbm/util/c/a;->a:Lcom/bbm/util/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/bbm/util/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method
