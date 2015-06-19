.class public Lnet/hockeyapp/android/objects/ErrorObject;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x14ede2a74a40f08cL
.field private code:I
.field private message:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/objects/ErrorObject;->message:Ljava/lang/String;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/ErrorObject;->message:Ljava/lang/String;
return-void
.end method