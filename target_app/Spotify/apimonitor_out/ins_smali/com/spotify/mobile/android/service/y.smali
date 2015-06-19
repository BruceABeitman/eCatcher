.class final Lcom/spotify/mobile/android/service/y;
.super Lcom/spotify/mobile/android/service/k;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
.method constructor <init>(Lcom/spotify/mobile/android/service/MetadataManagerProxy;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/k;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/String;)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/c;->a(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public final a(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/service/managers/c;->a(Ljava/lang/String;[Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1, p2, p3}, Lcom/spotify/mobile/android/service/managers/c;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/c;->a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/service/managers/c;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 12
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/service/managers/c;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/c;->b(Ljava/lang/String;)V
return-void
.end method
.method public final b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 12
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/service/managers/c;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
return-void
.end method
.method public final c(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/y;->a:Lcom/spotify/mobile/android/service/MetadataManagerProxy;
iget-object v0, v0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->b:Landroid/os/Binder;
check-cast v0, Lcom/spotify/mobile/android/service/managers/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/managers/c;->c(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
move-result-object v0
return-object v0
.end method