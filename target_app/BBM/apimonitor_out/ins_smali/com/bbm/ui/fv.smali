.class public final Lcom/bbm/ui/fv;
.super Lcom/bbm/ui/activities/ajz;
.source "SheetActivityLifeCycleListener.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/activities/ajy;)V
.registers 4
const/high16 v0, 0x7f04
const v1, 0x7f040016
invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V
return-void
.end method
.method public final c(Lcom/bbm/ui/activities/ajy;)V
.registers 4
const v0, 0x7f040015
const v1, 0x7f040014
invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V
return-void
.end method