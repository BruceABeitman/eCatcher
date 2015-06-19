.class final Lcom/bbm/m/c;
.super Ljava/lang/Object;
.source "Swilt.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:Z

.field final synthetic e:Lcom/bbm/m/a;


# direct methods
.method public constructor <init>(Lcom/bbm/m/a;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    iput-object p1, p0, Lcom/bbm/m/c;->e:Lcom/bbm/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/m/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/m/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/m/c;->d:Z

    if-nez p2, :cond_14

    const-string p2, ""

    :cond_14
    iput-object p2, p0, Lcom/bbm/m/c;->a:Ljava/lang/String;

    if-nez p3, :cond_1a

    const-string p3, ""

    :cond_1a
    iput-object p3, p0, Lcom/bbm/m/c;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bbm/m/c;->c:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/bbm/m/c;

    iget-object v2, p0, Lcom/bbm/m/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/m/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/bbm/m/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/m/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method
