.class public final Lcom/userzoom/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Luserzoom/com/InterceptDialog;


# direct methods
.method public constructor <init>(Luserzoom/com/InterceptDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/ae;->a:Luserzoom/com/InterceptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/userzoom/ae;->a:Luserzoom/com/InterceptDialog;

    invoke-virtual {v0}, Luserzoom/com/InterceptDialog;->finish()V

    return-void
.end method
