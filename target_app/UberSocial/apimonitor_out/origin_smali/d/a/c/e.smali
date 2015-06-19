.class public Ld/a/c/e;
.super Ld/a/c/b;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."

    invoke-direct {p0, v0}, Ld/a/c/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Authorization failed (server replied with a 401). This can happen if the consumer key was not correct or the signatures did not match."

    invoke-direct {p0, v0}, Ld/a/c/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ld/a/c/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/a/c/e;->b:Ljava/lang/String;

    return-object v0
.end method
