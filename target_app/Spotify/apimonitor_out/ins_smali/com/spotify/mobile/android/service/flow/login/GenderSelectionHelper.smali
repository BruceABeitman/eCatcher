.class final Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field private a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.field private b:Lcom/spotify/mobile/android/service/flow/login/f;
.field private final c:Landroid/app/AlertDialog;
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.registers 9
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f0300bf
invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
const v0, 0x7f0a0377
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
invoke-static {}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->values()[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
move-result-object v3
array-length v4, v3
new-array v4, v4, [Ljava/lang/String;
:goto_1f
array-length v5, v3
if-ge v1, v5, :cond_2d
aget-object v5, v3, v1
invoke-virtual {v5, p1}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_2d
new-instance v1, Landroid/widget/ArrayAdapter;
const v3, 0x7f0300cd
invoke-direct {v1, p1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->c:Landroid/app/AlertDialog;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->c:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method public final a(I)V
.registers 4
if-ltz p1, :cond_9
invoke-static {}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->values()[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
move-result-object v0
array-length v0, v0
if-lt p1, v0, :cond_16
:cond_9
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b:Lcom/spotify/mobile/android/service/flow/login/f;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b:Lcom/spotify/mobile/android/service/flow/login/f;
invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/f;->a()V
:goto_15
:cond_15
return-void
:cond_16
invoke-static {}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->values()[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
move-result-object v0
aget-object v0, v0, p1
iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b:Lcom/spotify/mobile/android/service/flow/login/f;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b:Lcom/spotify/mobile/android/service/flow/login/f;
iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->a(Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;)I
move-result v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/f;->a(I)V
goto :goto_15
.end method
.method public final a(Lcom/spotify/mobile/android/service/flow/login/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b:Lcom/spotify/mobile/android/service/flow/login/f;
return-void
.end method
.method public final b()Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
return-object v0
.end method
.method public final c()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->ordinal()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, -0x1
goto :goto_a
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0, p3}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->c:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
const-string v1, " - Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method