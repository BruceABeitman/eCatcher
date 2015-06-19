.class final Lcom/bbm/ui/activities/js;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/activities/jr;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/jr;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/js;->b:Lcom/bbm/ui/activities/jr;

    iput-object p2, p0, Lcom/bbm/ui/activities/js;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/js;->b:Lcom/bbm/ui/activities/jr;

    iget-object v0, v0, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/activities/js;->b:Lcom/bbm/ui/activities/jr;

    iget-object v2, v2, Lcom/bbm/ui/activities/jr;->a:Lcom/bbm/ui/activities/FilePickerActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/FilePickerActivity;->h(Lcom/bbm/ui/activities/FilePickerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/js;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V

    return-void
.end method
