.class  Lco/vine/android/api/VineComparatorFactory$DefaultComparator;
.super Ljava/lang/Object;
.source "VineComparatorFactory.java"
.implements Lco/vine/android/api/VineComparatorFactory$VineComparator;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/api/VineComparatorFactory$1;)V
.registers 2
invoke-direct {p0}, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;-><init>()V
return-void
.end method
.method public compare(Lco/vine/android/api/VinePost;Lco/vine/android/api/VinePost;)I
.registers 6
invoke-virtual {p0, p2}, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;->getOrderId(Lco/vine/android/api/VinePost;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {p0, p1}, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;->getOrderId(Lco/vine/android/api/VinePost;)J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
move-result v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lco/vine/android/api/VinePost;
check-cast p2, Lco/vine/android/api/VinePost;
invoke-virtual {p0, p1, p2}, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;->compare(Lco/vine/android/api/VinePost;Lco/vine/android/api/VinePost;)I
move-result v0
return v0
.end method
.method public getOrderId(Lco/vine/android/api/VinePost;)J
.registers 4
iget-wide v0, p1, Lco/vine/android/api/VinePost;->postId:J
return-wide v0
.end method
.method public bridge synthetic getOrderId(Ljava/lang/Object;)J
.registers 4
check-cast p1, Lco/vine/android/api/VinePost;
invoke-virtual {p0, p1}, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;->getOrderId(Lco/vine/android/api/VinePost;)J
move-result-wide v0
return-wide v0
.end method