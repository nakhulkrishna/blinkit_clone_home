import 'package:clone_blinkit/models/category_model.dart' show CategoryModel;
import 'package:clone_blinkit/models/product_model.dart';

class DummyData {

  //* CATEGORY DUMMY DATAS
  List<CategoryModel> dummyCategories = [
    CategoryModel(
      categoryName: "Fruits & Veggies",
      numberOfProducts: 20,
      imageUrls: [
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/a1ba074a-c085-4dd1-b4a4-2f247d6f211d.jpg?ts=1711010249",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/6a5b2806-bdf1-489f-a31b-6581c5a2a0a0.jpg?ts=1726553710",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/5a4a0d11-1a16-4870-93c6-d0b63c317b66.jpg?ts=1710821936",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/ecb2357a-7b98-4f34-8eaf-15eaf656e50e.jpg?ts=1714127336",
      ],
    ),
    CategoryModel(
      categoryName: "Dairy & Bakery",
      numberOfProducts: 15,
      imageUrls: [
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/438911b0-1175-4357-8708-5571a7c718bb.jpg?ts=1712325565",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/51d3af26-fefd-4948-8440-7ecc68a7eeef.jpg?ts=1744970408",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/f34453f1-c4ee-42e2-a3b5-cdde4ceefa48.jpg?ts=1730959363",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/da/cms-assets/cms/product/c2813780-9847-46a9-8645-e1ef44e8c7f2.jpg?ts=1729354408",
      ],
    ),
    CategoryModel(
      categoryName: "Snacks & Munchies",
      numberOfProducts: 30,
      imageUrls: [
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/084ae821-a115-4237-bb97-a573dfe1d59f.jpg?ts=1729599734",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/f20b5fcf-ef68-4f71-a560-047b28604722.jpg?ts=1728646633",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/c4e2a2b9-5c4e-4444-8936-cbac1a943565.jpg?ts=1723793937",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/9a9fcd49-b4b9-4399-a74d-0ee2d313786e.jpg?ts=1742970256", 
      ],
    ),
    CategoryModel(
      categoryName: "Beverages",
      numberOfProducts: 18,
      imageUrls: [
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/images/products/sliding_image/15288a.jpg?ts=1698840601",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/4c9a2d0f-6ce2-4db5-bbc1-83b195e9a56d.jpg?ts=1740295344",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/0ad88094-c4ea-48fd-b866-46da87d6739d.jpg?ts=1711970525",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/9af76d7d-b97e-4035-b1ba-2ad3aab66619.jpg?ts=1721651343",
      ],
    ),
    CategoryModel(
      categoryName: "Baby Care",
      numberOfProducts: 12,
      imageUrls: [
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/804b4556-decd-4578-879a-45cd931ab4c0.jpg?ts=1712163097",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/app/assets/products/sliding_images/jpeg/65a68796-ea24-4a91-8366-37da52be9a48.jpg?ts=1722142631",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=360/da/cms-assets/cms/product/209f1e9a-7e3f-4ae1-a9a5-62432c11e109.jpg?ts=1737054017",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/da/cms-assets/cms/product/5b389ae8-fd62-43cb-b311-fc3b383234cc.jpg?ts=1734679579",
      ],
    ),
    CategoryModel(
      categoryName: "House & office",
      numberOfProducts: 10,
      imageUrls: [
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/a1a183a0-82ba-432b-bb74-84650ea6f6c3.jpg?ts=1713451350",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/41945098-abad-4875-adf4-08c977c26419.jpg?ts=1713451354",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/fa5ecc25-9139-417f-b9cc-27d3c9981f94.jpg?ts=1710266200",
        "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=450/app/assets/products/sliding_images/jpeg/6db8e7d1-3c58-4828-96f3-2faae3f3c668.jpg",
      ],
    ),
  ];

  //* PROUCTS DUMMY DATAS 
  final List<ProductModel> dummyProducts = [
    ProductModel(
      name: "Prestige Apex 3 Jar 500w Mixer",
      power: "500w",
      jars: "3 jar",
      rating: 4.0,
      deliveryTime: "8 Mins",
      discount: "49%",
      price: 2049,
      originalPrice: 4049,
      imageUrl:
          "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=540/app/assets/products/sliding_images/jpeg/82a3cd76-8f5a-4fdf-a4aa-86288748aa44.jpg",
    ),
    ProductModel(
      name: "Butterfly Hero 4 Jar 750w Mixer",
      power: "750w",
      jars: "4 jar",
      rating: 4.5,
      deliveryTime: "10 Mins",
      discount: "35%",
      price: 2999,
      originalPrice: 4599,
      imageUrl:
          "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=540/app/images/products/sliding_image/431285a.jpg?ts=1697014995",
    ),
    ProductModel(
      name: "Bajaj Rex 3 Jar 500w Mixer",
      power: "500w",
      jars: "3 jar",
      rating: 3.8,
      deliveryTime: "6 Mins",
      discount: "40%",
      price: 1899,
      originalPrice: 3199,
      imageUrl:
          "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=540/app/images/products/sliding_image/519980a.jpg?ts=1697015931",
    ),
    ProductModel(
      name: "Philips HL7756 750W Turbo Mixer",
      power: "750w",
      jars: "3 jar",
      rating: 4.3,
      deliveryTime: "12 Mins",
      discount: "30%",
      price: 3499,
      originalPrice: 4999,
      imageUrl:
          "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=540/app/assets/products/sliding_images/jpeg/adb2bed6-5ce3-48c8-a243-180d1bd390a3.jpg",
    ),
    ProductModel(
      name: "Maharaja Whiteline Mixer Grinder 500w",
      power: "500w",
      jars: "3 jar",
      rating: 4.0,
      deliveryTime: "9 Mins",
      discount: "45%",
      price: 1999,
      originalPrice: 3699,
      imageUrl:
          "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=540/app/assets/products/sliding_images/jpeg/24a2e35f-8cb4-4957-b50f-e1c454c75c56.jpg",
    ),
    ProductModel(
      name: "Preethi Zodiac MG 218 750-Watt Mixer",
      power: "750w",
      jars: "5 jar",
      rating: 4.6,
      deliveryTime: "11 Mins",
      discount: "38%",
      price: 5499,
      originalPrice: 8799,
      imageUrl:
          "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=70,metadata=none,w=540/app/assets/products/sliding_images/jpeg/35511be4-e751-40d3-8a76-65557bc221bd.jpg",
    ),
  ];
}