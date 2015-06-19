.class public final Lcom/google/a/a/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Lcom/google/a/c;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/a/c;Ljava/util/Set;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/a/c;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/a;->a:Ljava/util/Date;

    iput-object p2, p0, Lcom/google/a/a/a;->b:Lcom/google/a/c;

    iput-object p3, p0, Lcom/google/a/a/a;->c:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/a/a/a;->d:Z

    return-void
.end method
