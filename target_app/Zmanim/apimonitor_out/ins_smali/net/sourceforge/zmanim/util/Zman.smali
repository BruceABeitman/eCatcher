.class public Lnet/sourceforge/zmanim/util/Zman;
.super Ljava/lang/Object;
.source "Zman.java"
.field public static final DATE_ORDER:Ljava/util/Comparator;
.field public static final DURATION_ORDER:Ljava/util/Comparator;
.field public static final NAME_ORDER:Ljava/util/Comparator;
.field private duration:J
.field private zman:Ljava/util/Date;
.field private zmanDescription:Ljava/util/Date;
.field private zmanLabel:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lnet/sourceforge/zmanim/util/Zman$1;
invoke-direct {v0}, Lnet/sourceforge/zmanim/util/Zman$1;-><init>()V
sput-object v0, Lnet/sourceforge/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;
new-instance v0, Lnet/sourceforge/zmanim/util/Zman$2;
invoke-direct {v0}, Lnet/sourceforge/zmanim/util/Zman$2;-><init>()V
sput-object v0, Lnet/sourceforge/zmanim/util/Zman;->NAME_ORDER:Ljava/util/Comparator;
new-instance v0, Lnet/sourceforge/zmanim/util/Zman$3;
invoke-direct {v0}, Lnet/sourceforge/zmanim/util/Zman$3;-><init>()V
sput-object v0, Lnet/sourceforge/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;
return-void
.end method
.method public constructor <init>(JLjava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p3, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;
iput-wide p1, p0, Lnet/sourceforge/zmanim/util/Zman;->duration:J
return-void
.end method
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;
iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zman:Ljava/util/Date;
return-void
.end method
.method public getDuration()J
.registers 3
iget-wide v0, p0, Lnet/sourceforge/zmanim/util/Zman;->duration:J
return-wide v0
.end method
.method public getZman()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/Zman;->zman:Ljava/util/Date;
return-object v0
.end method
.method public getZmanDescription()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanDescription:Ljava/util/Date;
return-object v0
.end method
.method public getZmanLabel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;
return-object v0
.end method
.method public setDuration(J)V
.registers 3
iput-wide p1, p0, Lnet/sourceforge/zmanim/util/Zman;->duration:J
return-void
.end method
.method public setZman(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zman:Ljava/util/Date;
return-void
.end method
.method public setZmanDescription(Ljava/util/Date;)V
.registers 2
iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanDescription:Ljava/util/Date;
return-void
.end method
.method public setZmanLabel(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lnet/sourceforge/zmanim/util/Zman;->zmanLabel:Ljava/lang/String;
return-void
.end method