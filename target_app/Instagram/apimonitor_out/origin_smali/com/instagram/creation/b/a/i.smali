.class public Lcom/instagram/creation/b/a/i;
.super Ljava/lang/Object;
.source "VideoUploadUrl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/b/a/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/creation/b/a/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/creation/b/a/i;->c:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/a/i;->c:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/b/a/i;->a:Ljava/lang/String;

    return-object v0
.end method
