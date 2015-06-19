.class public final Lcom/instagram/l/p;
.super Ljava/lang/Object;
.source "QuickExperimentOverrideManager.java"


# static fields
.field private static final a:Lcom/instagram/l/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/instagram/l/f;

    const-string v1, "qe_override_cache"

    invoke-direct {v0, v1}, Lcom/instagram/l/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/l/p;->a:Lcom/instagram/l/f;

    return-void
.end method

.method public static a()Lcom/instagram/l/f;
    .registers 1

    sget-object v0, Lcom/instagram/l/p;->a:Lcom/instagram/l/f;

    return-object v0
.end method
