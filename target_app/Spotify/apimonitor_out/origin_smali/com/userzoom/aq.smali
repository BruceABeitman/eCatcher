.class final Lcom/userzoom/aq;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/userzoom/aq;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/userzoom/aq;->a()Lcom/userzoom/aq;

    return-void
.end method


# virtual methods
.method final a()Lcom/userzoom/aq;
    .registers 2

    iget-object v0, p0, Lcom/userzoom/aq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/userzoom/aq;
    .registers 6

    iget-object v0, p0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\$\\{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/userzoom/aq;->a:Ljava/lang/String;

    return-object p0
.end method
