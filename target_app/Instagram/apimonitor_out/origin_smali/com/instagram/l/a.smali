.class public final Lcom/instagram/l/a;
.super Lcom/instagram/l/b;
.source "BooleanExperimentParameter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "is_enabled"

    const-string v1, "disabled"

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/l/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/l/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/l/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/l/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
