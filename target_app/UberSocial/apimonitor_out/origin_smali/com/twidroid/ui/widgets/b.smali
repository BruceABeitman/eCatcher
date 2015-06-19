.class Lcom/twidroid/ui/widgets/b;
.super Lcom/twidroid/model/twitter/c;
.source "SourceFile"


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/twidroid/model/twitter/c;-><init>()V

    iput-object p1, p0, Lcom/twidroid/ui/widgets/b;->f:Ljava/lang/String;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/ui/widgets/b;->b(J)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/widgets/b;->f:Ljava/lang/String;

    return-object v0
.end method
