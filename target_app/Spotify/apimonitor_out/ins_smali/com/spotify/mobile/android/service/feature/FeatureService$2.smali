.class final Lcom/spotify/mobile/android/service/feature/FeatureService$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/service/feature/FeatureService;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "key"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "value"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
sget-object v2, Lcom/spotify/mobile/android/provider/q;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 10
const/4 v6, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_c3
new-instance v2, Ljava/util/HashMap;
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V
:cond_12
:goto_12
invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v1}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->b()Ljava/util/Set;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_12
:cond_38
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_45
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/fragments/logic/s;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/s;->a()Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_94
:try_start_63
iget-object v4, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v4}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;Ljava/lang/String;)V
:try_end_6b
.catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_6b} :catch_6c
goto :goto_45
:catch_6c
move-exception v4
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Use of non-integer product state "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/Flag;->c()Lcom/spotify/mobile/android/ui/fragments/logic/w;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/fragments/logic/s;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/s;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "="
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V
goto :goto_45
:cond_94
iget-object v1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v1}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)V
goto :goto_45
:cond_9d
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/i;->d()V
const-string v0, "Product flags are loaded"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/FeatureService;)Lcom/spotify/mobile/android/ui/fragments/logic/i;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b()Z
move-result v0
if-eqz v0, :cond_c3
const-string v0, " -- Notifying listeners"
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$2;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->c(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
:cond_c3
return-void
.end method