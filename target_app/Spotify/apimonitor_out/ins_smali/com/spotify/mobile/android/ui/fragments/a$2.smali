.class final Lcom/spotify/mobile/android/ui/fragments/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Z
.field final synthetic b:Landroid/content/ContentValues;
.field final synthetic c:Lcom/spotify/mobile/android/model/j;
.field final synthetic d:Lcom/spotify/mobile/android/ui/fragments/a;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/a;ZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->d:Lcom/spotify/mobile/android/ui/fragments/a;
iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->a:Z
iput-object p3, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->b:Landroid/content/ContentValues;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->c:Lcom/spotify/mobile/android/model/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/a$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->d:Lcom/spotify/mobile/android/ui/fragments/a;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->W:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->d:Lcom/spotify/mobile/android/ui/fragments/a;
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->a:Z
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->b:Landroid/content/ContentValues;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a$2;->c:Lcom/spotify/mobile/android/model/j;
const/4 v4, 0x0
invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Lcom/spotify/mobile/android/ui/fragments/a;ZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;Z)V
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/a$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method