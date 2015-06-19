.class public Lcom/spotify/mobile/android/ui/page/a;
.super Lcom/spotify/mobile/android/ui/page/b;
.source "SourceFile"
.implements Landroid/view/View$OnCreateContextMenuListener;
.field private b:Landroid/widget/ListView;
.field private c:Landroid/widget/ListAdapter;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
new-instance v1, Lcom/spotify/mobile/android/ui/page/a$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/page/a$1;-><init>(Lcom/spotify/mobile/android/ui/page/a;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
new-instance v1, Lcom/spotify/mobile/android/ui/page/a$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/page/a$2;-><init>(Lcom/spotify/mobile/android/ui/page/a;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getId()I
move-result v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a;->a(I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/page/a;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
return-object v0
.end method
.method protected a(Landroid/content/Context;Landroid/view/ViewGroup;)V
.registers 6
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/page/a;->f()Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03008b
const/4 v2, 0x0
invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ListView;
iput-object v1, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/page/a;->c(Landroid/view/View;)V
return-void
.end method
.method public a(Landroid/view/View;IJ)V
.registers 5
return-void
.end method
.method public final a(Landroid/widget/ListAdapter;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a;->c:Landroid/widget/ListAdapter;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a;->c:Landroid/widget/ListAdapter;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method protected final a(Landroid/widget/ListView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
return-void
.end method
.method public a(Landroid/view/View;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final c()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a;->b:Landroid/widget/ListView;
return-object v0
.end method
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/page/a; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/page/a; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method