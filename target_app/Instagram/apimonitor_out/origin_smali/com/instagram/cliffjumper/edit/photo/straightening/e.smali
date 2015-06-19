.class final enum Lcom/instagram/cliffjumper/edit/photo/straightening/e;
.super Lcom/instagram/cliffjumper/edit/photo/straightening/d;
.source "StraighteningController.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/cliffjumper/edit/photo/straightening/d;
    .registers 3

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/straightening/e;->values()[Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
