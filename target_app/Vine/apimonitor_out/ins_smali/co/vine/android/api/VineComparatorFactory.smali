.class public Lco/vine/android/api/VineComparatorFactory;
.super Ljava/lang/Object;
.source "VineComparatorFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static get(I)Lco/vine/android/api/VineComparatorFactory$VineComparator;
.registers 3
const/4 v1, 0x0
invoke-static {p0}, Lco/vine/android/util/Util;->isPopularTimeline(I)Z
move-result v0
if-eqz v0, :cond_d
new-instance v0, Lco/vine/android/api/VineComparatorFactory$VinePopularComparator;
invoke-direct {v0, v1}, Lco/vine/android/api/VineComparatorFactory$VinePopularComparator;-><init>(Lco/vine/android/api/VineComparatorFactory$1;)V
:goto_c
return-object v0
:cond_d
packed-switch p0, :pswitch_data_22
new-instance v0, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;
invoke-direct {v0, v1}, Lco/vine/android/api/VineComparatorFactory$DefaultComparator;-><init>(Lco/vine/android/api/VineComparatorFactory$1;)V
goto :goto_c
:pswitch_16
new-instance v0, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;
invoke-direct {v0, v1}, Lco/vine/android/api/VineComparatorFactory$HomeTimelineComparator;-><init>(Lco/vine/android/api/VineComparatorFactory$1;)V
goto :goto_c
:pswitch_1c
new-instance v0, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;
invoke-direct {v0, v1}, Lco/vine/android/api/VineComparatorFactory$ProfileTimelineComparator;-><init>(Lco/vine/android/api/VineComparatorFactory$1;)V
goto :goto_c
:pswitch_data_22
.packed-switch 0x1
:pswitch_16
:pswitch_1c
.end packed-switch
.end method