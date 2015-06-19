.class final Lcom/bbm/ui/db;
.super Ljava/lang/Object;
.source "InlineImageEditText.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field final synthetic a:Lcom/bbm/ui/InlineImageEditText;


# direct methods
.method constructor <init>(Lcom/bbm/ui/InlineImageEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/db;->a:Lcom/bbm/ui/InlineImageEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
