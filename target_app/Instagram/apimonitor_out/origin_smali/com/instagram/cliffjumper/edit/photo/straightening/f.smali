.class public final Lcom/instagram/cliffjumper/edit/photo/straightening/f;
.super Lcom/instagram/cliffjumper/edit/common/ui/c;
.source "StraighteningInfo.java"


# instance fields
.field private final a:Lcom/instagram/cliffjumper/edit/common/ui/a;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
    .registers 5

    sget v0, Lcom/facebook/az;->straighten:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/facebook/au;->tool_straighten:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/c;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;

    return-void
.end method


# virtual methods
.method public final d()Lcom/instagram/cliffjumper/edit/common/ui/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/a;

    return-object v0
.end method
