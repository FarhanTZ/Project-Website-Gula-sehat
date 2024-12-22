const hardcode = {
  pelanggan: {
    PelangganID: "User095455",
    Username: "MV",
    Nama_Lengkap: "Marvel Stefano",
    Email: "marvelstefano@gmail.com",
    DOB: "2004-06-07",
    Alamat: "Surabaya",
    Jenis_Kelamin: "Male",
    Berat_Badan: 70,
  },
  dokter: {
    DokterID: "Dokter1503",
    Username: "TestDokter",
    Password: "",
    Nama_Dokter: "TestDokter",
    Email: "testdokter@gmail.com",
    Alamat: "Bandulan",
    No_Telp: 123456,
  },
  seller: {
    PenjualID: "Seller82236",
    Username: "TestSeller",
    Password: "",
    Nama_Penjual: "Test Seller",
    Nama_Bisnis: "TestBisnis",
    Email: "testseller@gmail.com",
    No_Telp: 12938128,
    Alamat: "Bojong",
  },
};

import { createContext, useState, useEffect } from "react";

export const AuthContext = createContext();

export default function AuthProvider({ children }) {
  const [user, setUser] = useState(() => {
    const savedUser = localStorage.getItem("user");
    return savedUser ? JSON.parse(savedUser) : null;
  });
  const [userRole, setUserRole] = useState(() => {
    const savedUserRole = localStorage.getItem("userRole");
    return savedUserRole || null;
  });

  useEffect(() => {
    if (user) {
      localStorage.setItem("user", JSON.stringify(user));
    } else {
      localStorage.removeItem("user");
    }
  }, [user]);

  useEffect(() => {
    if (userRole) {
      localStorage.setItem("userRole", userRole);
    } else {
      localStorage.removeItem("userRole");
    }
  }, [userRole]);

  const logout = () => {
    setUser(null);
    setUserRole(null);
    localStorage.removeItem("user");
    localStorage.removeItem("userRole");
  };

  return (
    <AuthContext.Provider
      value={{ user, setUser, userRole, setUserRole, logout }}
    >
      {children}
    </AuthContext.Provider>
  );
}
