.class public Lnet/hockeyapp/android/objects/Feedback;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x23f22471d131d6e8L
.field private createdAt:Ljava/lang/String;
.field private email:Ljava/lang/String;
.field private id:I
.field private messages:Ljava/util/ArrayList;
.field private name:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/objects/Feedback;->messages:Ljava/util/ArrayList;
return-object v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lnet/hockeyapp/android/objects/Feedback;->id:I
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->name:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->messages:Ljava/util/ArrayList;
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->email:Ljava/lang/String;
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/objects/Feedback;->createdAt:Ljava/lang/String;
return-void
.end method