.class Lboston/Bus/Map/main/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboston/Bus/Map/main/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lboston/Bus/Map/main/Main;


# direct methods
.method constructor <init>(Lboston/Bus/Map/main/Main;)V
    .registers 2

    iput-object p1, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #getter for: Lboston/Bus/Map/main/Main;->firstRunRoute:Z
    invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$300(Lboston/Bus/Map/main/Main;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    const/4 v1, 0x0

    #setter for: Lboston/Bus/Map/main/Main;->firstRunRoute:Z
    invoke-static {v0, v1}, Lboston/Bus/Map/main/Main;->access$302(Lboston/Bus/Map/main/Main;Z)Z

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #getter for: Lboston/Bus/Map/main/Main;->busLocations:Lboston/Bus/Map/data/Locations;
    invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$100(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/data/Locations;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
    invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #setter for: Lboston/Bus/Map/main/Main;->selectedRouteIndex:I
    invoke-static {v0, p3}, Lboston/Bus/Map/main/Main;->access$402(Lboston/Bus/Map/main/Main;I)I

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
    invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lboston/Bus/Map/main/UpdateHandler;->setRouteIndex(I)V

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
    invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate()V

    iget-object v0, p0, Lboston/Bus/Map/main/Main$2;->this$0:Lboston/Bus/Map/main/Main;

    #getter for: Lboston/Bus/Map/main/Main;->handler:Lboston/Bus/Map/main/UpdateHandler;
    invoke-static {v0}, Lboston/Bus/Map/main/Main;->access$200(Lboston/Bus/Map/main/Main;)Lboston/Bus/Map/main/UpdateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lboston/Bus/Map/main/UpdateHandler;->immediateRefresh()V

    goto :goto_e
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
