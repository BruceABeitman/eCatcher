.class  Lcom/glympse/android/lib/ep;
.super Lcom/glympse/android/lib/ew;
.source "InviteGroupTicketView.java"
.field protected ms:Lcom/glympse/android/lib/GGroupPrivate;
.field protected oy:Lcom/glympse/android/lib/GGroupMemberPrivate;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 12
const/4 v4, 0x1
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p4
move-object v3, p5
invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ew;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;ZZ)V
iput-object p2, p0, Lcom/glympse/android/lib/ep;->ms:Lcom/glympse/android/lib/GGroupPrivate;
iput-object p3, p0, Lcom/glympse/android/lib/ep;->oy:Lcom/glympse/android/lib/GGroupMemberPrivate;
return-void
.end method
.method protected ce()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/ep;->ms:Lcom/glympse/android/lib/GGroupPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/ep;->oy:Lcom/glympse/android/lib/GGroupMemberPrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
const/4 v0, 0x0
return v0
.end method