.class final Lcom/bbm/setup/b;
.super Ljava/lang/Object;
.source "ContactListAccessPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/setup/ContactListAccessPromptActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/ContactListAccessPromptActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/b;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/setup/b;->a:Lcom/bbm/setup/ContactListAccessPromptActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/ContactListAccessPromptActivity;->b()V

    return-void
.end method
