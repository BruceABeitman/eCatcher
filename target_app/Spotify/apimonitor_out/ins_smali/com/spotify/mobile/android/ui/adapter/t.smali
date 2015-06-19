.class public Lcom/spotify/mobile/android/ui/adapter/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/ListAdapter;
.field protected a:Landroid/view/View;
.field private b:Z
.method public constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/t;->a:Landroid/view/View;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/t;->b:Z
return-void
.end method
.method public constructor <init>(Landroid/view/View;B)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/t;->a:Landroid/view/View;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/t;->b:Z
return-void
.end method
.method public areAllItemsEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/t;->b:Z
return v0
.end method
.method public getCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/t;->a:Landroid/view/View;
return-object v0
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isEmpty()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEnabled(I)Z
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/adapter/t;->b:Z
return v0
.end method
.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 2
return-void
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 2
return-void
.end method